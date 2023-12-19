package cn.edu.scnu.controller;

import cn.edu.scnu.entity.Flower;
import cn.edu.scnu.entity.RegisterDTO;
import cn.edu.scnu.entity.TbMember;
import cn.edu.scnu.service.FlowerService;
import cn.edu.scnu.service.MemberService;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;


@Controller
public class IndexController {

    @Autowired
    private FlowerService flowerService;

    @Autowired
    private MemberService memberService;

    @RequestMapping("/index")
    public String index(@RequestParam(name="pageNo", defaultValue = "1") Integer pageNo,
                        @RequestParam(name="pageSize", defaultValue = "4") Integer pageSize,
                        String fname,
                        String fclass,
                        @RequestParam(name="minprice", defaultValue = "0") Integer minprice,
                        @RequestParam(name="maxprice", defaultValue = Integer.MAX_VALUE+"") Integer maxprice,
                        Model model){

        if(maxprice < minprice){
            maxprice = Integer.MAX_VALUE;
        }

        // 当前页码，每一页显示多少条记录，
        Map<String, Object> map = flowerService.queryPage(pageNo, pageSize,fname,fclass,minprice,maxprice);
        int count = (Integer) map.get("count");
        List<Flower> flowerList = (List<Flower>)map.get("recourds");

        // 66/4
        int pageCount = (count / pageSize == 0) ? (count / pageSize) : (count / pageSize) + 1;

        model.addAttribute("currentPage", pageNo);
        model.addAttribute("pageCount", pageCount);

        model.addAttribute("fname", fname);
        model.addAttribute("fclass", fclass);
        model.addAttribute("minprice", minprice);
        model.addAttribute("maxprice", maxprice);

        model.addAttribute("flowerlist", flowerList);
        model.addAttribute("fclasses", flowerService.findclass());
        return "index";
    }

    @RequestMapping("/index/flowerdetail")
    public String flowerdetail(String flowerid, Model model){
        model.addAttribute("flower", flowerService.findById(flowerid));
        return "flowerdetail";
    }

    @RequestMapping("/index/toLogin")
    public String toLogin() {
        return "login";
    }

    @RequestMapping("/index/doLogin")
    @ResponseBody
    public String doLogin(String email, String password, HttpSession session) {
        TbMember member = memberService.login(email, password);
        if (member != null) {
            member.setPassword(""); //去敏
            session.setAttribute("memberLogin", member);
            return "登录成功!";
        } else {
            return "登录失败!";
        }
    }



    @RequestMapping("/index/logOut")
    public String logOut( HttpSession session){
        session.removeAttribute("memberLogin");
        return "redirect:/index";
    }
    @RequestMapping("/index/toRegister")
    public String toRegister() {
        return "register";
    }
    @RequestMapping("/index/doRegister")
    @ResponseBody
    public String doRegister(RegisterDTO registerDTO){
        // 将RegisterDTO转换为TbMember
        TbMember member = new TbMember();
        member.setEmail(registerDTO.getEmail());
        member.setPassword(registerDTO.getPassw1()); // 注意这里的转换

        if(memberService.register(member)){
            return "注册成功!";
        }
        return "注册失败!";
    }

}
