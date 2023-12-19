package cn.edu.scnu.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;

@Data
public class Movie implements Serializable {
    private static final long serialVersionUID = -3710185376322109571L;
    @TableId
    private String movieid;
    private String moviename;
    private String genre;
    private String fclass;
    private String region;
    private String staring;
    private String baozhuang;
    private String huayu;
    private String shuoming;
    private Integer price;
    private String director;
    private String pictures;
    private String picturem;
    private String pictureb;
    private String pictured;
    private String staringpicture;
    private String bzpicture;
    private String tejia;
    private Integer sellednum;

}
