package cn.payroll.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import cn.payroll.connection.DBConnection;
import cn.payroll.model.Employee;

public class EmployeeDao {

    public void addEmployee(String name, String email, String dept) {
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO employees(name,email,department) VALUES(?,?,?)"
            );
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, dept);

            ps.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    public void updateEmployee(int id, String name, String dept) {
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "UPDATE employees SET name=?, department=? WHERE emp_id=?"
            );
            ps.setString(1, name);
            ps.setString(2, dept);
            ps.setInt(3, id);

            ps.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    public void deleteEmployee(int id) {
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "DELETE FROM employees WHERE emp_id=?"
            );
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    public List<Employee> getAllEmployees() {

        List<Employee> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM employees");
            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                Employee e = new Employee();
                e.setId(rs.getInt("emp_id"));
                e.setName(rs.getString("name"));
                e.setEmail(rs.getString("email"));
                e.setDepartment(rs.getString("department"));

                list.add(e);
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}