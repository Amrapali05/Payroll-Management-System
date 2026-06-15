package cn.payroll.servlet;

import java.io.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import cn.payroll.dao.AttendanceDao;

@WebServlet("/AttendanceServlet")
public class AttendanceServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String date = req.getParameter("date");
		String status = req.getParameter("status");

		new AttendanceDao().addAttendance(id, date, status);

		res.sendRedirect("admin/attendance.jsp");
	}
}