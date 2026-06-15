package cn.payroll.dao;

import java.sql.*;
import cn.payroll.connection.DBConnection;
import cn.payroll.model.Salary;

public class SalaryDao {

	// INSERT SALARY
	public void addSalary(int empId, double basic, double hra, double bonus, double deduction, String month) {

		double net = basic + hra + bonus - deduction;

		try {
			Connection con = DBConnection.getConnection();

			PreparedStatement ps = con.prepareStatement(
					"INSERT INTO salary(emp_id,basic,hra,bonus,deduction,net_salary,month) VALUES(?,?,?,?,?,?,?)");

			ps.setInt(1, empId);
			ps.setDouble(2, basic);
			ps.setDouble(3, hra);
			ps.setDouble(4, bonus);
			ps.setDouble(5, deduction);
			ps.setDouble(6, net);
			ps.setString(7, month);

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// GET SALARY
	public Salary getSalaryByEmpId(int id) {

		Salary s = new Salary();

		try {
			Connection con = DBConnection.getConnection();

			PreparedStatement ps = con
					.prepareStatement("SELECT * FROM salary WHERE emp_id=? ORDER BY salary_id DESC LIMIT 1");

			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				s.setEmpId(id);
				s.setBasic(rs.getDouble("basic"));
				s.setHra(rs.getDouble("hra"));
				s.setBonus(rs.getDouble("bonus"));
				s.setDeduction(rs.getDouble("deduction"));
				s.setNetSalary(rs.getDouble("net_salary"));
				s.setMonth(rs.getString("month"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return s;
	}
}