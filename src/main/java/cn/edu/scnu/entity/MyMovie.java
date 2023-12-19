package cn.edu.scnu.entity;

import org.springframework.web.multipart.MultipartFile;

// 不用注解，因为是和前端打交道
public class MyMovie {

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
    private MultipartFile pictures;
    private MultipartFile picturem;
    private MultipartFile pictureb;
    private MultipartFile pictured;
    private MultipartFile staringpicture;
    private MultipartFile bzpicture;
    private String tejia;

    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getFclass() {
        return fclass;
    }

    public void setFclass(String fclass) {
        this.fclass = fclass;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getStaring() {
        return staring;
    }

    public void setStaring(String staring) {
        this.staring = staring;
    }

    public String getBaozhuang() {
        return baozhuang;
    }

    public void setBaozhuang(String baozhuang) {
        this.baozhuang = baozhuang;
    }

    public String getHuayu() {
        return huayu;
    }

    public void setHuayu(String huayu) {
        this.huayu = huayu;
    }

    public String getShuoming() {
        return shuoming;
    }

    public void setShuoming(String shuoming) {
        this.shuoming = shuoming;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public MultipartFile getPictures() {
        return pictures;
    }

    public void setPictures(MultipartFile pictures) {
        this.pictures = pictures;
    }

    public MultipartFile getPicturem() {
        return picturem;
    }

    public void setPicturem(MultipartFile picturem) {
        this.picturem = picturem;
    }

    public MultipartFile getPictureb() {
        return pictureb;
    }

    public void setPictureb(MultipartFile pictureb) {
        this.pictureb = pictureb;
    }

    public MultipartFile getPictured() {
        return pictured;
    }

    public void setPictured(MultipartFile pictured) {
        this.pictured = pictured;
    }

    public MultipartFile getStaringpicture() {
        return staringpicture;
    }

    public void setStaringpicture(MultipartFile staringpicture) {
        this.staringpicture = staringpicture;
    }

    public MultipartFile getBzpicture() {
        return bzpicture;
    }

    public void setBzpicture(MultipartFile bzpicture) {
        this.bzpicture = bzpicture;
    }

    public String getTejia() {
        return tejia;
    }

    public void setTejia(String tejia) {
        this.tejia = tejia;
    }
}
