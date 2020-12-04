package dao;

import db.DBConnection;
import model.Admin;
import model.Contactfushi;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class ContactDaoImpl implements ContactDao{

    @Override
    public List<Contactfushi> getAllContactfushis() {
        try {
            DBConnection db = new DBConnection();
            Connection con = db.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from fsxx");
            //获取数据库连接
            //执行查询
            //处理结果集
            List<Contactfushi> contacts = new ArrayList<Contactfushi>();
            while(rs.next()){
                //将行数据加入通讯录封装类
                Contactfushi contact = new Contactfushi();
                contact.setF_name(rs.getString("f_name"));
                contact.setFs_id(rs.getInt("fs_id"));
                contact.setJg(rs.getInt("jg"));
                contact.setFstp(rs.getString("fstp"));
                contact.setFsjs(rs.getString("fsjs"));
                contacts.add(contact); //将对象加入列表
            }
            // 关闭连接，释放资源
            rs.close();
            st.close();
            con.close();

            return contacts;  //返回全部通讯录

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Admin getAdmin(String account, String password) {
        try {
            DBConnection db = new DBConnection();
            Connection con = db.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from yh where y_name=? && mm=?");
            pst.setString(1, account);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                Admin admin = new Admin();
                admin.setY_id(rs.getInt("y_id"));
                admin.setY_name(rs.getString("y_name"));
                admin.setY_name(rs.getString("mm"));
                admin.setY_name(rs.getString("sjh"));
                admin.setZhye(rs.getInt("zhye"));
                rs.close();
                pst.close();
                con.close();
                return admin;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public void addContact(Admin admin) {
        try {
            // 获取连接
            DBConnection db = new DBConnection();
            Connection con = db.getConnection();
            // 执行SQL语句
            PreparedStatement pst = con.prepareStatement("insert into yh(y_name ,mm, sjh, zhye) values(?,?,?,?)");
            pst.setString(1,admin.getY_name());
            pst.setString(2,admin.getMm());
            pst.setString(3,admin.getSjh());
            pst.setInt(4, admin.getZhye());
            pst.executeUpdate();
            pst.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public int byAdmin(String y_name) {

        System.out.println(y_name);
        try {
            DBConnection db = new DBConnection();
            Connection con = db.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from yh where y_name=?");
            pst.setString(1, y_name);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
               return 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

}
