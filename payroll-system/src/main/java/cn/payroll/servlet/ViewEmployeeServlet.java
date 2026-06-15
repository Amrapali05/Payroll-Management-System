import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.payroll.dao.EmployeeDao;
import cn.payroll.model.Employee;

@WebServlet("/ViewEmployeeServlet")
public class ViewEmployeeServlet extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		EmployeeDao dao = new EmployeeDao();

		List<Employee> list = dao.getAllEmployees();

		req.setAttribute("empList", list);

		RequestDispatcher rd = req.getRequestDispatcher("admin/view_employees.jsp");
		rd.forward(req, res);
	}
}