package com.bjpowernode.model.service;

import com.bjpowernode.entity.User;
import com.bjpowernode.model.dao.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements IUserService {

    @Autowired
    UserMapper userDao;

    @Override
    public List<User> list() {
        return userDao.selectAll();
    }

    @Override
    public User get(int id) {
        return userDao.selectByPrimaryKey(id);
    }

    @Override
    public void save(User user) {
        userDao.insertSelective(user);
    }

    @Override
    public void update(User user) {
        userDao.updateByPrimaryKey(user);
    }

    @Override
    public void delete(int id) {
        userDao.deleteByPrimaryKey(id);
    }

    @Override
    public User get(String userName) {
        return userDao.selectByUserName(userName);
    }
}
