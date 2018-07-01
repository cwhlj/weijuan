package com.chengwei.mapper;

import com.chengwei.entity.User;

public interface UserMapper {
    int countByUserAccount(String userAccount);
    int insert(User user);
}
