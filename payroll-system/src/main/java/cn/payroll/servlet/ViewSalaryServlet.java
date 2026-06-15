package cn.payroll.servlet;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import cn.payroll.dao.SalaryDao;
import cn.payroll.model.Salary;

@WebServlet("/ViewSalaryServlet")
public class ViewSalaryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException, ServletException {

        int id = Integer.parseInt(req.getParameter("id"));

        SalaryDao dao = new SalaryDao();
        req.setAttribute("salary", dao.getSalaryByEmpId(id));

        req.getRequestDispatcher("employee/view_salary.jsp").forward(req, res);
    }
}