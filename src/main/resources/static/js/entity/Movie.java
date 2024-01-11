package cn.edu.scnu.entity;

import javax.persistence.Id;
import javax.persistence.Entity;

@Entity(name="movie")
public class Movie {
    @Id
    private String movieid;
    private String moviename;
    private String genre;
    private String fclass;
    private String region;
    private String staring;
    private String director;
    private String huayu;
    private String shuoming;
    private Integer price;
    private String rating;
    private String pictures;
    private String picturem;
    private String pictureb;
    private String pictured;
    private String staringpicture;
    private String bzpicture;
    private String tejia;
    private Integer sellednum;

    public String getMovieid() {
        return movieid;
    }

    public void setMovieid(String movieid) {
        this.movieid = movieid;
    }

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

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
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

    public Integer getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getPictures() {
        return pictures;
    }

    public void setPictures(String pictures) {
        this.pictures = pictures;
    }

    public String getPicturem() {
        return picturem;
    }

    public void setPicturem(String picturem) {
        this.picturem = picturem;
    }

    public String getPictureb() {
        return pictureb;
    }

    public void setPictureb(String pictureb) {
        this.pictureb = pictureb;
    }

    public String getPictured() {
        return pictured;
    }

    public void setPictured(String pictured) {
        this.pictured = pictured;
    }

    public String getStaringpicture() {
        return staringpicture;
    }

    public void setStaringpicture(String staringpicture) {
        this.staringpicture = staringpicture;
    }

    public String getBzpicture() {
        return bzpicture;
    }

    public void setBzpicture(String bzpicture) {
        this.bzpicture = bzpicture;
    }

    public String getTejia() {
        return tejia;
    }

    public void setTejia(String tejia) {
        this.tejia = tejia;
    }

    public Integer getSelledNum() {
        return sellednum;
    }

    public void setSelledNum(Integer selledNum) {
        this.sellednum = selledNum;
    }
}
