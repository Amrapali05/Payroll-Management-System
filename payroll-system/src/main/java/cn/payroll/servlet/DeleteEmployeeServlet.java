package cn.payroll.servlet;

import java.io.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import cn.payroll.dao.EmployeeDao;

@WebServlet("/DeleteEmployeeServlet")
public class DeleteEmployeeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        int id = Integer.parseInt(req.getParameter("id"));

        new EmployeeDao().deleteEmployee(id);

        res.sendRedirect("ViewEmployeeServlet");
    }
}