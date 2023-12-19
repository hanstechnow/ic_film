package cn.edu.scnu.controller;

import cn.edu.scnu.entity.Movie;
import cn.edu.scnu.entity.MyMovie;
import cn.edu.scnu.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private MovieService movieService;

    @RequestMapping("/admin/movieindex")
    public String movieIndex(Model model){
        List<Movie> movieList = movieService.findAll();
        model.addAttribute("movies", movieList);
        return "movieindex";
    }

    @RequestMapping("/admin/movieadd")
    public String movieAdd(Model model){
        List<String> fclasses = movieService.findclass();
        model.addAttribute("fclasses", fclasses);
        return "movieadd";
    }

    @RequestMapping("/admin/saveMovie")
    public String saveMovie(MyMovie mymovie){
        String msg = movieService.saveMovie(mymovie);
        System.out.println(msg);
        return "redirect:/admin/movieindex";
    }

    @RequestMapping("/admin/moviedelete")
    public String deleteMovie(String movieid){
//        movieService.removeById(movieid);  // 可以不用在Service中写代码
        movieService.deleteById(movieid);
        return "redirect:/admin/movieindex";
    }

    @RequestMapping("/admin/movieupdate")
    public String movieupdate(String movieid, Model model){
        model.addAttribute("fclasses", movieService.findclass());
        model.addAttribute("movie", movieService.findById(movieid));
        return "movieupdate";
    }

    @RequestMapping("/admin/saveUpdate")
    public String saveUpdate(Movie movie){
        Movie movie1 = movieService.updateMovie(movie);

        return "redirect:/admin/movieindex";
    }


















}
