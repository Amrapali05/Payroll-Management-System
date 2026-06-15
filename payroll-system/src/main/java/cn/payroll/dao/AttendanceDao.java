package cn.payroll.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import cn.payroll.connection.DBConnection;
import cn.payroll.model.Attendance;

public class AttendanceDao {

	public void addAttendance(int empId, String date, String status) {
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO attendance(emp_id,date,status) VALUES(?,?,?)");
			ps.setInt(1, empId);
			ps.setString(2, date);
			ps.setString(3, status);

			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public List<Attendance> getAttendanceByEmpId(int id){

	    List<Attendance> list = new ArrayList<>();

	    try{
	        Connection con = DBConnection.getConnection();
	        PreparedStatement ps = con.prepareStatement(
	            "SELECT * FROM attendance WHERE emp_id=?"
	        );
	        ps.setInt(1, id);

	        ResultSet rs = ps.executeQuery();

	        while(rs.next()){
	            Attendance a = new Attendance();
	            a.setDate(rs.getString("date"));
	            a.setStatus(rs.getString("status"));

	            list.add(a);
	        }

	    }catch(Exception e){
	        e.printStackTrace();
	    }

	    return list;
	}
}