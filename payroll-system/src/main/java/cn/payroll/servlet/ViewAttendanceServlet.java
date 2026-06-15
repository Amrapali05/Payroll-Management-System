import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.payroll.dao.AttendanceDao;
import cn.payroll.dao.EmployeeDao;
import cn.payroll.model.Attendance;
import cn.payroll.model.Employee;

@WebServlet("/ViewAttendanceServlet")
public class ViewAttendanceServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));

        AttendanceDao dao = new AttendanceDao();
        List<Attendance> list = dao.getAttendanceByEmpId(id);

        req.setAttribute("attList", list);

        RequestDispatcher rd = req.getRequestDispatcher("employee/view_attendance.jsp");
        rd.forward(req, res);
    }
}