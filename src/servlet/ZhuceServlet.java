package servlet;

import dao.ContactDao;
import dao.ContactDaoImpl;
import model.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ZhuceServlet", urlPatterns = "/ZhuceServlet")
public class ZhuceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取参数
        String account = request.getParameter("y_name");
        String password = request.getParameter("mm");
        String sjh = request.getParameter("sjh");

        String error_name=null;
        String error_mm=null;
        String error_sjh=null;

        if(account==null||account.length()<2)
        {
            error_name ="姓名不能为空或字符较少!!!";
            ContactDao dao = new ContactDaoImpl();
            int i = dao.byAdmin(account);
            if(i!=0){
                error_name ="该用户名以存在!!!";
            }
        }
        if (sjh==null||sjh.length()<11)
        {
            error_sjh="手机号码格式不正确";
        }
        if (password==null||password.length()<6)
        {
            error_mm="密码不能为空或密码字符较少";
        }

        if (error_sjh==null && error_mm==null && error_name==null)
        {
            Admin admin = new Admin();
            admin.setY_name(account);
            admin.setMm(password);
            admin.setSjh(sjh);
            admin.setZhye(0);
            //将数据写入数据库
            ContactDao dao = new ContactDaoImpl();
            dao.addContact(admin);
            int fla=1;
            request.setAttribute("fla",fla);
            response.sendRedirect("index.jsp");  //页面跳转到：首页
        }else{
            request.setAttribute("error_name",error_name);
            request.setAttribute("error_moobile",error_sjh);
            request.setAttribute("error_moobile",error_mm);
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}