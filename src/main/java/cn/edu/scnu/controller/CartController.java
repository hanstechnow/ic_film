package cn.edu.scnu.controller;

import cn.edu.scnu.entity.Cart;
import cn.edu.scnu.entity.TbMember;
import cn.edu.scnu.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CartController {

    @Autowired
    private CartService cartService;

    @RequestMapping("/cart/addCart")
    public String addCart(String movieid,HttpSession session){
        TbMember member=(TbMember)session.getAttribute("memberLogin");
        if(member==null){
            return "login";
        }
        Cart cart=new Cart();
        cart.setMovieid(movieid);
        cart.setUsername(member.getUsername());
        cart.setNum(1);
        cartService.addCart(cart);
        return "redirect:/index";
    }

    @RequestMapping("/cart/showCart")
    public String showCart(Model model, HttpSession session){
        TbMember member=(TbMember) session.getAttribute("memberLogin");
        if (member==null){
            return "login";
        }
        List<Cart> carts=cartService.showCart(member.getUsername());
        model.addAttribute("carts",carts);
        return "showcart";

    }

    @RequestMapping("/cart/updateCart")
    public String updateCart(Integer cartId, Integer num){
        cartService.updateCart(cartId, num);
        return "redirect:/cart/showCart";
    }

    @RequestMapping("/cart/deleteCart")
    public String deleteCart(Integer cartId){
        cartService.removeById(cartId);
        return "redirect:/cart/showCart";
    }

    @RequestMapping("/cart/clearCart")
    public String clearCart(HttpSession session){
        TbMember member=(TbMember)session.getAttribute("memberLogin");
        cartService.clearCart(member.getUsername());
        return "redirect:/cart/showCart";
    }
}
