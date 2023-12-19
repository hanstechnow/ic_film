package cn.edu.scnu.controller;

import cn.edu.scnu.entity.Flower;
import cn.edu.scnu.entity.MyFlower;
import cn.edu.scnu.service.FlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private FlowerService flowerService;

    @RequestMapping("/admin/flowerindex")
    public String flowerIndex(Model model){
        List<Flower> flowerList = flowerService.findAll();
        model.addAttribute("flowers", flowerList);
        return "flowerindex";
    }

    @RequestMapping("/admin/floweradd")
    public String flowerAdd(Model model){
        List<String> fclasses = flowerService.findclass();
        model.addAttribute("fclasses", fclasses);
        return "floweradd";
    }

    @RequestMapping("/admin/saveFlower")
    public String saveFlower(MyFlower myflower){
        String msg = flowerService.saveFlower(myflower);
        System.out.println(msg);
        return "redirect:/admin/flowerindex";
    }

    @RequestMapping("/admin/flowerdelete")
    public String deleteFlower(String flowerid){
//        flowerService.removeById(flowerid);  // 可以不用在Service中写代码
        flowerService.deleteById(flowerid);
        return "redirect:/admin/flowerindex";
    }

    @RequestMapping("/admin/flowerupdate")
    public String flowerupdate(String flowerid, Model model){
        model.addAttribute("fclasses", flowerService.findclass());
        model.addAttribute("flower", flowerService.findById(flowerid));
        return "flowerupdate";
    }

    @RequestMapping("/admin/saveUpdate")
    public String saveUpdate(Flower flower){
        Flower flower1 = flowerService.updateFlower(flower);

        return "redirect:/admin/flowerindex";
    }


















}
