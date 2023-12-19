package cn.edu.scnu.service;

import cn.edu.scnu.entity.Flower;
import cn.edu.scnu.entity.MyFlower;
import cn.edu.scnu.mapper.FlowerMapper;
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
public class FlowerService extends ServiceImpl<FlowerMapper, Flower> {
    @Autowired
    private FlowerMapper flowerMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    public List<Flower> findAll() {
        return flowerMapper.selectList(null);
    }

    @Cacheable(cacheNames = "fclass")
    public List<String> findclass() {
        QueryWrapper<Flower> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("distinct fclass");
        List<Flower> flowers = flowerMapper.selectList(queryWrapper);
        List<String> fclasses = new ArrayList<>();
        for(Flower flower: flowers){
            fclasses.add(flower.getFclass());
        }
        return fclasses;
    }

    public String saveFlower(MyFlower myFlower) {
        Flower flower = new Flower();
        //生成UUID
        String flowerid = UUID.randomUUID().toString();
        flower.setFlowerid(flowerid);
        flower.setFname(myFlower.getFname());
        flower.setMyclass(myFlower.getMyclass());
        flower.setFclass(myFlower.getFclass());
        flower.setFclass1(myFlower.getFclass1());
        flower.setCailiao(myFlower.getCailiao());
        flower.setBaozhuang(myFlower.getBaozhuang());
        flower.setHuayu(myFlower.getHuayu());
        flower.setShuoming(myFlower.getShuoming());
        flower.setPrice(myFlower.getPrice());
        flower.setYourprice(myFlower.getYourprice());
        flower.setTejia(myFlower.getTejia());
        flower.setSellednum(0);

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

        MultipartFile pictures =  myFlower.getPictures();
        if(!"".equals(pictures.getOriginalFilename())){
            msg = uploadfile(pictures, dir);
            if(!"".equals(msg)){
                return msg;
            } else{
                // 这里上课老师用的是dir，但是文档里面是imgurl，所以我改回来了
                flower.setPictures(imgurl + "/" +pictures.getOriginalFilename());
            }
        }

        //处理picturem
        MultipartFile picturem = myFlower.getPicturem();
        if(!"".equals(picturem.getOriginalFilename())){
            msg = uploadfile(picturem,dir);
            if(!"".equals(msg)){
                return msg;
            }else{
                flower.setPicturem(imgurl+"/"+picturem.getOriginalFilename());
            }}
        //处理pictureb
        MultipartFile pictureb = myFlower.getPictureb();
        if(!"".equals(pictureb.getOriginalFilename())){
            msg = uploadfile(pictureb,dir);
            if(!"".equals(msg)){
                return msg;
            }else{
                flower.setPictureb(imgurl+"/"+pictureb.getOriginalFilename());
            }}
        //处理pictured
        MultipartFile pictured = myFlower.getPictured();
        if(!"".equals(pictured.getOriginalFilename())){
            msg = uploadfile(pictured,dir);
            if(!"".equals(msg)){
                return msg;
            }else{
                flower.setPictured(imgurl+"/"+pictured.getOriginalFilename());
                System.out.println("数据库图片路径"+imgurl+pictured.getOriginalFilename());
            }}
        //处理bzpicture
        MultipartFile bzpicture = myFlower.getBzpicture();
        if(!"".equals(bzpicture.getOriginalFilename())){
            msg = uploadfile(bzpicture,dir);
            if(!"".equals(msg)){
                return msg;
            }else{
                flower.setBzpicture(imgurl+"/"+bzpicture.getOriginalFilename());
            }}
        //处理cailiaopicture
        MultipartFile cailiaopicture = myFlower.getCailiaopicture();
        if(!"".equals(cailiaopicture.getOriginalFilename())){
            msg = uploadfile(cailiaopicture,dir);
            if(!"".equals(msg)){
                return msg;
            }else{
                flower.setCailiaopicture(imgurl+"/"+cailiaopicture.getOriginalFilename());
            }}

        flowerMapper.insert(flower);

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

    @CacheEvict(cacheNames = "flower")
    public void deleteById(String flowerid) {
        flowerMapper.deleteById(flowerid);
    }

//    @Cacheable(cacheNames = "flower", key = "#result.flowerid")
    public Flower findById(String flowerid) {
        Object object = redisTemplate.opsForValue().get("flower_"+flowerid);
        if(object != null){
            return (Flower) object;
        } else {
            Flower flower = flowerMapper.selectById(flowerid);
            redisTemplate.opsForValue().set("flower_"+flowerid, flower, 1, TimeUnit.DAYS);
            return flower;
        }
    }

    @CachePut(cacheNames = "flower", key = "#result.flowerid")
    public Flower updateFlower(Flower flower) {
        flowerMapper.updateById(flower);
        return flower;
    }

    public Map<String, Object> queryPage(Integer pageNo, Integer pageSize,
                                         String fname, String fclass,
                                         Integer minprice, Integer maxprice) {

        QueryWrapper<Flower> queryWrapper = new QueryWrapper<>();
        if(StringUtils.isNotEmpty(fname))
            queryWrapper.like("fname", fname);
        if(StringUtils.isNotEmpty(fclass))
            queryWrapper.like("fclass", fclass);
        queryWrapper.between("yourprice", minprice, maxprice);

        int count = flowerMapper.selectCount(queryWrapper).intValue();
        queryWrapper.orderByDesc("sellednum");
        Page<Flower> page = new Page<>(pageNo, pageSize);
        flowerMapper.selectPage(page, queryWrapper);
        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("recourds", page.getRecords());
        return map;
    }
}
