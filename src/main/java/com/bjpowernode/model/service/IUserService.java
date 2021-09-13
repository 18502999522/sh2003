package com.bjpowernode.model.service;

import com.bjpowernode.entity.User;

import java.util.List;

public interface IUserService {

    List<User> list();

    User get(int id);

    User get(String userName);

    void save(User user);

    void update(User user);

    void delete(int id);
}
