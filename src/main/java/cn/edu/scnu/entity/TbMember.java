package cn.edu.scnu.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName(value="user")
public class TbMember implements Serializable {
    private static final long serialVersionUID = 1L;
    @TableId
    private String username;
    private String password;

}
