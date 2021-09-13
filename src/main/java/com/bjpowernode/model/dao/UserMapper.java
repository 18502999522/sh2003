package com.bjpowernode.model.dao;

import com.bjpowernode.entity.User;

import java.util.List;

public interface UserMapper {

    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);

    User selectByUserName(String userName);

    List<User> selectAll();

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}