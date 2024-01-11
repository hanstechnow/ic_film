package cn.edu.scnu.service;

import cn.edu.scnu.entity.Customer;
import cn.edu.scnu.mapper.CustomerMapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class CustomerService extends ServiceImpl<CustomerMapper, Customer> {
    private CustomerMapper customerMapper;
    @Inject
    public void setCustomerMapper(CustomerMapper customerMapper) {
        this.customerMapper = customerMapper;
    }


    public List<Customer> findByUsername(String username) {
        QueryWrapper<Customer>queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("username",username);
        return customerMapper.selectList(queryWrapper);

    }
}
