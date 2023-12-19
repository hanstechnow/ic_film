package cn.edu.scnu.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class Cart {
    @TableId(type = IdType.AUTO)
    private Integer cartId;
    private String email;
    private String movieid;
    private Integer num;
    private String moviename;
    private String pictures;
    private Integer price;
    private String director;

}
