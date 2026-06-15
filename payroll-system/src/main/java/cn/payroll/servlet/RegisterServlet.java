package cn.payroll.servlet;

import java.io.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import cn.payroll.dao.UserDao;
import cn.payroll.model.User;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		User user = new User();
		user.setName(req.getParameter("name"));
		user.setEmail(req.getParameter("email"));
		user.setPassword(req.getParameter("password"));
		user.setRole(req.getParameter("role"));

		new UserDao().register(user);

		res.sendRedirect("index.jsp");
	}
}