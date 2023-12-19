package cn.edu.scnu.entity;


import lombok.Data;

@Data
public class RegisterDTO {
    private String email;
    private String passw1; // 和前端一致
}