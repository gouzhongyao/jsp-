package dao;

import model.Admin;
import model.Contactfushi;
import java.util.List;

public interface ContactDao {

    List<Contactfushi> getAllContactfushis();

    Admin getAdmin(String account, String password);

    void addContact(Admin admin);

    int byAdmin(String y_name);

}
