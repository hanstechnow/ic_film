package cn.edu.scnu.service;

import cn.edu.scnu.common.MD5Util;
import cn.edu.scnu.entity.TbMember;
import cn.edu.scnu.mapper.MemberMapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class MemberService extends ServiceImpl<MemberMapper, TbMember> {
    @Autowired
    private MemberMapper memberMapper;

    public TbMember login(String username, String password) {
        TbMember member = memberMapper.selectById(username);
        if (member != null && member.getPassword().equals(MD5Util.md5(password))) {
            return member;
        } else {
            return null;
        }
    }

    public boolean register(TbMember member) {
        if (StringUtils.isEmpty(member.getUsername()) || StringUtils.isEmpty(member.getPassword())) {
            return false;
        }
        member.setPassword(MD5Util.md5(member.getPassword()));
        return memberMapper.insert(member) > 0;
    }
}

