package cn.edu.scnu.controller;

import cn.edu.scnu.entity.Cart;
import cn.edu.scnu.entity.Customer;
import cn.edu.scnu.entity.TbMember;
import cn.edu.scnu.service.CartService;
import cn.edu.scnu.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class OrderController {
   private CustomerService customerService;
   private CartService cartService;


    public OrderController(CustomerService customerService, CartService cartService) {
        this.customerService = customerService;
        this.cartService = cartService;
    }

    @RequestMapping("/order/order")
    public String order(String cartIds, HttpSession session, Model model){
        TbMember member=(TbMember) session.getAttribute("memberLogin");
        if(member==null){
            return "login";
        }
        model.addAttribute("member",member);


        List<Customer> customers=customerService.findByEmail(member.getEmail());
        model.addAttribute("customers",customers);
        List<Cart> carts=new ArrayList<>();
        String[] arrcartIds=cartIds.split(",");
        int sum=0;
        int total=0;
        for(String cid:arrcartIds){
            Cart cart=cartService.getById(cid);
            carts.add(cart);
            sum+=cart.getNum();
            total=cart.getNum();
        }
        model.addAttribute("carts",carts);
        model.addAttribute("sum",sum);
        model.addAttribute("total",total);
        return "order";
    }
}
