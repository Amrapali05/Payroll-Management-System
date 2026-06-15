package cn.payroll.servlet;

import java.io.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import cn.payroll.dao.EmployeeDao;

@WebServlet("/AddEmployeeServlet")
public class AddEmployeeServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String dept = req.getParameter("dept");

		new EmployeeDao().addEmployee(name, email, dept);

		res.sendRedirect("ViewEmployeeServlet");
	}
}