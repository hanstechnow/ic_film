package cn.edu.scnu.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;

@Data
public class Flower implements Serializable {
    private static final long serialVersionUID = -3710185376322109571L;
    @TableId
    private String flowerid;
    private String fname;
    private String myclass;
    private String fclass;
    private String fclass1;
    private String cailiao;
    private String baozhuang;
    private String huayu;
    private String shuoming;
    private Integer price;
    private Integer yourprice;
    private String pictures;
    private String picturem;
    private String pictureb;
    private String pictured;
    private String cailiaopicture;
    private String bzpicture;
    private String tejia;
    private Integer sellednum;

}
