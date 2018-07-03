package com.cinema.dao;


import com.cinema.domain.User;

public interface UserDao {

    public User login(User user);

    public boolean register(User user);

}
