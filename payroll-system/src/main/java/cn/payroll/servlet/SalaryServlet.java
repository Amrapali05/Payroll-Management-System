package cn.payroll.servlet;

import java.io.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import cn.payroll.dao.SalaryDao;

@WebServlet("/SalaryServlet")
public class SalaryServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		double basic = Double.parseDouble(req.getParameter("basic"));
		double hra = Double.parseDouble(req.getParameter("hra"));
		double bonus = Double.parseDouble(req.getParameter("bonus"));
		double deduction = Double.parseDouble(req.getParameter("deduction"));
		String month = req.getParameter("month");

		SalaryDao dao = new SalaryDao();
		dao.addSalary(id, basic, hra, bonus, deduction, month);

		res.sendRedirect("admin/salary.jsp");
	}
}