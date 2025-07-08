package com.dorm.service.impl;

import com.dorm.dao.mapper.UserMapper;
import com.dorm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public void updateUserPwd(Integer studentId, String npwd) {
        userMapper.updateUserPwd(studentId, npwd);
    }
}
