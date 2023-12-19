package cn.edu.scnu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@EnableCaching
@SpringBootApplication
public class SpringBootFlowerApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootFlowerApplication.class, args);
    }

}
