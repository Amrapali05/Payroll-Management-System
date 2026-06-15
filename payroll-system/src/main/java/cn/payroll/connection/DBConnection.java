// cn/payroll/connection/DBConnection.java
package cn.payroll.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static Connection con;

	public static Connection getConnection() {
		try {
			if (con == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll_system", "root", "abhizure");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}