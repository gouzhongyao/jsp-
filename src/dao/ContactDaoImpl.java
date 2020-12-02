package dao;

import db.DBConnection;
import model.Contactfushi;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
}
