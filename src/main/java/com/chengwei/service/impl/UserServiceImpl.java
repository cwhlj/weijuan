package com.chengwei.service.impl;

import com.chengwei.mapper.UserMapper;
import com.chengwei.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author chengwei
 * @date 2018/4/28 14:43
 */
@Service
public class UserServiceImpl implements UserService{
    @Resource
    private UserMapper userMapper;

    @Override
    public int countByUserAccount(String userAccount) {
        return userMapper.countByUserAccount(userAccount);
    }
}
