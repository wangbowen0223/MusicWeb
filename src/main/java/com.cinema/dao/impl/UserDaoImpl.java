package com.cinema.dao.impl;

import com.cinema.dao.BaseDao;
import com.cinema.dao.UserDao;
import com.cinema.domain.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {
    @Override
    public User login(User user) {

        Connection con=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try {
            con=BaseDao.getCon();
            String sql="select * from user where email =? and password=?";
            ps=con.prepareStatement(sql);
            ps.setString(1,user.getEmail());
            ps.setString(2,user.getPassword());
            rs=ps.executeQuery();

            User user1=null;
            if (rs.next())
            {
                user1=new User();
                user1.setFirstname(rs.getString("firstname"));
                user1.setLastname(rs.getString("lastname"));
                user1.setPassword(rs.getString("password"));
                user1.setEmail(rs.getString("emain"));
                user1.setMobile(rs.getString("mobile"));

                return user1;
            }

            else return null;
        }catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        }catch (SQLException e)
        {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public boolean register(User user) {
        String sql ="insert into user values(?,?,?,?,?,?)";
        List<Object> list=new ArrayList<Object>();
        list.add(user.getFirstname());
        list.add(user.getLastname());
        list.add(user.getEmail());
        list.add(user.getMobile());
        list.add(user.getGender());
        list.add(user.getPassword());

        boolean flag=BaseDao.addUpdateDelete(sql,list.toArray());
        if(flag)
        {
            return true;
        }else return false;
    }
}
