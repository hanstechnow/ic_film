package cn.edu.scnu.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name="user")
public class TbMember {
    @Id
    private String username;
    private String password;
    private String mname;
    private String mobile;
    private String address;
    private int jifen;
    private double ye;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getJifen() {
        return jifen;
    }

    public void setJifen(int jifen) {
        this.jifen = jifen;
    }

    public double getYe() {
        return ye;
    }

    public void setYe(double ye) {
        this.ye = ye;
    }

}
