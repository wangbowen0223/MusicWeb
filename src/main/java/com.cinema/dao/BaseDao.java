package com.cinema.dao;

import java.sql.*;

public class BaseDao {

        private static String driver="com.mysql.jdbc.Driver";
        private static String url="jdbc:mysql://localhost:3306/music";
        private static String user="root";
        private static String password="wangbowen0223";

       /*
       * 连接数据库的方法*/

       public static Connection getCon() throws ClassNotFoundException,SQLException
       {
           Class.forName(driver);
           System.out.println("测试数据库加载成功");
           Connection con = DriverManager.getConnection(url,user,password);
           System.out.println("测试数据库链接成功");
           return con;
       }

       /*
       * 关闭数据库*/

       public static void close(Connection con, PreparedStatement ps, ResultSet rs)
       {
           if(rs!=null)//关闭资源
           {
               try {
                   rs.close();;
               }catch (SQLException e)
               {
                   e.printStackTrace();
               }
           }

           if (ps!=null) {
               try {
                   ps.close();
               } catch (SQLException e) {
                   e.printStackTrace();
               }
           }

           if (con!=null) {
               try {
                   con.close();
               } catch (SQLException e) {
                   e.printStackTrace();
               }
           }
       }

       public static boolean addUpdateDelete(String sql,Object[] arr)
       {
           Connection con=null;
           PreparedStatement ps =null;
           try {
               con=BaseDao.getCon();
               ps=con.prepareStatement(sql);
               if (arr!=null&&arr.length!=0)
               {
                   for (int i=0;i<arr.length;i++)
                   {
                       ps.setObject(i+1,arr[i]);
                   }
               }
               int count=ps.executeUpdate();
               if (count>0){
                   return true;
               }
               else {
                   return false;
               }
           }catch (ClassNotFoundException e)
           {
               e.printStackTrace();
           }catch (SQLException e)
           {
               e.printStackTrace();
           }
           return false;
       }

       public static void main(String args[])
       {
           try {
               BaseDao.getCon();
           } catch (ClassNotFoundException e) {
               e.printStackTrace();
           } catch (SQLException e) {
               e.printStackTrace();
           }
           System.out.println("Success!");
       }






}
