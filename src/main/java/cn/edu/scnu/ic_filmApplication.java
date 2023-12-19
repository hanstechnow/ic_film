package cn.edu.scnu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@EnableCaching
@SpringBootApplication
public class ic_filmApplication {

    public static void main(String[] args) {
        SpringApplication.run(ic_filmApplication.class, args);
    }

}
