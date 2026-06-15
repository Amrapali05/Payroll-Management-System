package cn.payroll.servlet;

import java.io.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import cn.payroll.dao.UserDao;
import cn.payroll.model.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        System.out.println("Login Try: " + email);

        User user = new UserDao().login(email, password);

        if(user != null) {

            HttpSession session = req.getSession();
            session.setAttribute("user", user);

            if("admin".equals(user.getRole())) {
                res.sendRedirect(req.getContextPath() + "/admin/admin_dashboard.jsp");
            } else {
                res.sendRedirect(req.getContextPath() + "/employee/employee_dashboard.jsp");
            }

        } else {
            res.getWriter().println("Invalid Login");
        }
    }
}