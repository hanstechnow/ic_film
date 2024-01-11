package cn.edu.scnu.service;

import cn.edu.scnu.entity.Cart;
import cn.edu.scnu.entity.Movie;
import cn.edu.scnu.mapper.CartMapper;
import cn.edu.scnu.mapper.MovieMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService extends ServiceImpl<CartMapper, Cart> {

    @Autowired
    private CartMapper cartMapper;

    @Autowired
    private MovieMapper movieMapper;

    public void addCart(Cart cart) {
        QueryWrapper<Cart> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", cart.getUsername());
        queryWrapper.eq("movieId", cart.getMovieid());
        Cart _cart = cartMapper.selectOne(queryWrapper);
        if (_cart == null){
            Movie movie = movieMapper.selectById(cart.getMovieid());
            cart.setMoviename(movie.getMoviename());
            cart.setPictures(movie.getPictures());
            cart.setPrice(movie.getPrice());
            cart.setRating(movie.getRating());
            cartMapper.insert(cart);
        } else {
            _cart.setNum(_cart.getNum() + cart.getNum());
            cartMapper.updateById(_cart);
        }
    }

    public List<Cart> showCart(String username) {
        QueryWrapper<Cart> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", username);
        return cartMapper.selectList(queryWrapper);
    }

    public void updateCart(Integer cartId, Integer num) {
        Cart cart = cartMapper.selectById(cartId);
        cart.setNum(num);
        cartMapper.updateById(cart);
    }

    public void clearCart(String username) {
        QueryWrapper<Cart> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", username);
        cartMapper.delete(queryWrapper);
    }
}
