package cn.payroll.servlet;

import java.io.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import cn.payroll.dao.EmployeeDao;

@WebServlet("/UpdateEmployeeServlet")
public class UpdateEmployeeServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String dept = req.getParameter("dept");

		new EmployeeDao().updateEmployee(id, name, dept);

		res.sendRedirect("ViewEmployeeServlet");
	}
}