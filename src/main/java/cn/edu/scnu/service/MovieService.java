package cn.edu.scnu.service;

import cn.edu.scnu.entity.Movie;
import cn.edu.scnu.entity.MyMovie;
import cn.edu.scnu.mapper.MovieMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.*;
import java.util.concurrent.TimeUnit;

@Service
public class MovieService extends ServiceImpl<MovieMapper, Movie> {
    @Autowired
    private MovieMapper movieMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    public List<Movie> findAll() {
        return movieMapper.selectList(null);
    }

    @Cacheable(cacheNames = "fclass")
    public List<String> findclass() {
        QueryWrapper<Movie> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("distinct fclass");
        List<Movie> movies = movieMapper.selectList(queryWrapper);
        List<String> fclasses = new ArrayList<>();
        for(Movie movie: movies){
            fclasses.add(movie.getFclass());
        }
        return fclasses;
    }

    public String saveMovie(MyMovie myMovie) {
        Movie movie = new Movie();
        //生成UUID
        String movieid = UUID.randomUUID().toString();
        movie.setMovieid(movieid);
        movie.setMoviename(myMovie.getMoviename());
        movie.setGenre(myMovie.getGenre());
        movie.setFclass(myMovie.getFclass());
        movie.setRegion(myMovie.getRegion());
        movie.setStaring(myMovie.getStaring());
        movie.setBaozhuang(myMovie.getBaozhuang());
        movie.setHuayu(myMovie.getHuayu());
        movie.setShuoming(myMovie.getShuoming());
        movie.setPrice(myMovie.getPrice());
        movie.setDirector(myMovie.getDirector());
        movie.setTejia(myMovie.getTejia());
        movie.setSellednum(0);

        // 2.生成多级路径
        String imgurl = "";
        //   /a/2/e/a/2/3/b/e/f
        for (int i = 0; i < 8; i++) {
            imgurl += "/"+Integer.toHexString(new Random().nextInt(16));
        }
        //获取resources文件夹路径
        String realpath = System.getProperty("user.dir")+"/src/main/resources";

        String dir = realpath + "/static/picture" + imgurl+"/";
        System.out.println(dir);

        String msg;

        MultipartFile pictures =  myMovie.getPictures();
        if(!"".equals(pictures.getOriginalFilename())){
            msg = uploadfile(pictures, dir);
            if(!"".equals(msg)){
                return msg;
            } else{
                // 这里上课老师用的是dir，但是文档里面是imgurl，所以我改回来了
                movie.setPictures(imgurl + "/" +pictures.getOriginalFilename());
            }
        }

        //处理picturem
        MultipartFile picturem = myMovie.getPicturem();
        if(!"".equals(picturem.getOriginalFilename())){
            msg = uploadfile(picturem,dir);
            if(!"".equals(msg)){
                return msg;
            }else{
                movie.setPicturem(imgurl+"/"+picturem.getOriginalFilename());
            }}
        //处理pictureb
        MultipartFile pictureb = myMovie.getPictureb();
        if(!"".equals(pictureb.getOriginalFilename())){
            msg = uploadfile(pictureb,dir);
            if(!"".equals(msg)){
                return msg;
            }else{
                movie.setPictureb(imgurl+"/"+pictureb.getOriginalFilename());
            }}
        //处理pictured
        MultipartFile pictured = myMovie.getPictured();
        if(!"".equals(pictured.getOriginalFilename())){
            msg = uploadfile(pictured,dir);
            if(!"".equals(msg)){
                return msg;
            }else{
                movie.setPictured(imgurl+"/"+pictured.getOriginalFilename());
                System.out.println("数据库图片路径"+imgurl+pictured.getOriginalFilename());
            }}
        //处理bzpicture
        MultipartFile bzpicture = myMovie.getBzpicture();
        if(!"".equals(bzpicture.getOriginalFilename())){
            msg = uploadfile(bzpicture,dir);
            if(!"".equals(msg)){
                return msg;
            }else{
                movie.setBzpicture(imgurl+"/"+bzpicture.getOriginalFilename());
            }}
        //处理staringpicture
        MultipartFile staringpicture = myMovie.getStaringpicture();
        if(!"".equals(staringpicture.getOriginalFilename())){
            msg = uploadfile(staringpicture,dir);
            if(!"".equals(msg)){
                return msg;
            }else{
                movie.setStaringpicture(imgurl+"/"+staringpicture.getOriginalFilename());
            }}

        movieMapper.insert(movie);

        return "保存成功";
    }

    public String uploadfile(MultipartFile file, String dir){

        // 1.判断后缀是否合法
        // 获取图名称，后缀名称
        // 截取后缀substring split (".png" ".jgp")
        String originName = file.getOriginalFilename();
        String extName = originName.substring(originName.lastIndexOf("."));
        if (!(extName.equalsIgnoreCase(".jpg") || extName.equalsIgnoreCase(".png")
                || extName.equalsIgnoreCase(".gif"))) {// 图片后缀不合法
            return "图片后缀不合法!";
        }
        // 判断木马(java的类判断是否是图片属性，也可以引入第三方jar包判断)
        try {
            BufferedImage bufImage = ImageIO.read(file.getInputStream());
            bufImage.getHeight();
            bufImage.getWidth();
        } catch (Exception e) {
            return "该文件不是图片！";
        }
        File _file = new File(dir, originName);
        if (!_file.exists()) {
            _file.mkdirs();
        }
        // 上传文件
        try {
            file.transferTo(_file);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "";
    }

    @CacheEvict(cacheNames = "movie")
    public void deleteById(String movieid) {
        movieMapper.deleteById(movieid);
    }

//    @Cacheable(cacheNames = "movie", key = "#result.movieid")
    public Movie findById(String movieid) {
        Object object = redisTemplate.opsForValue().get("movie_"+movieid);
        if(object != null){
            return (Movie) object;
        } else {
            Movie movie = movieMapper.selectById(movieid);
            redisTemplate.opsForValue().set("movie_"+movieid, movie, 1, TimeUnit.DAYS);
            return movie;
        }
    }

    @CachePut(cacheNames = "movie", key = "#result.movieid")
    public Movie updateMovie(Movie movie) {
        movieMapper.updateById(movie);
        return movie;
    }

    public Map<String, Object> queryPage(Integer pageNo, Integer pageSize,
                                         String moviename, String fclass,
                                         Integer minprice, Integer maxprice) {

        QueryWrapper<Movie> queryWrapper = new QueryWrapper<>();
        if(StringUtils.isNotEmpty(moviename))
            queryWrapper.like("moviename", moviename);
        if(StringUtils.isNotEmpty(fclass))
            queryWrapper.like("fclass", fclass);
        queryWrapper.between("director", minprice, maxprice);

        int count = movieMapper.selectCount(queryWrapper).intValue();
        queryWrapper.orderByDesc("sellednum");
        Page<Movie> page = new Page<>(pageNo, pageSize);
        movieMapper.selectPage(page, queryWrapper);
        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("recourds", page.getRecords());
        return map;
    }
}
