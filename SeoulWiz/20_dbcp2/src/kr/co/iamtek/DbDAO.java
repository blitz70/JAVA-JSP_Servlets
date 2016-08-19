package kr.co.iamtek;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.*;
import javax.sql.DataSource;

public class DbDAO {
	
	//DB data
	private DataSource dataSource;
	/*
	private final String DRIVER = "com.mysql.jdbc.Driver";
	private final String URL = "jdbc:mysql://localhost:3306/jdbc";
	private final String USER = "blitz";
	private final String PASSWORD = "mysql";
	*/
	private final String TABLE = "members";

	private Connection myConn;
	private Statement myStmt;
	private PreparedStatement myPsmt;
	private ResultSet myRs;
	private String SQL;
	
	public DbDAO() {
		try {
			//Class.forName(DRIVER);
			System.out.println("test");
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/MySQL"); 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<DbDTO> memberSelect() {
		ArrayList<DbDTO> dtos = new ArrayList<DbDTO>();
		try {
			SQL = "SELECT * FROM `"+ TABLE + "`";
			//myConn = DriverManager.getConnection(URL, USER, PASSWORD);
			myConn = dataSource.getConnection();
			myStmt = myConn.createStatement();
			myRs = myStmt.executeQuery(SQL);
			while(myRs.next()) {
				String name = myRs.getString("name");
				String id = myRs.getString("id");
				String pw = myRs.getString("pw");
				String phone = myRs.getString("phone");
				String gender = myRs.getString("gender");
				dtos.add(new DbDTO(name, id, pw, phone, gender));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (!myRs.isClosed()) myRs.close();
				if (!myStmt.isClosed()) myStmt.close();
				if (!myConn.isClosed()) myConn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return dtos;
	}
	
	public String memberInsert(DbDTO dto) {
		String str = "";
		try {
			SQL = "INSERT INTO `"+ TABLE + "` (id, pw, name, phone, gender) VALUES (?, ?, ?, ?, ?)";
			//myConn = DriverManager.getConnection(URL, USER, PASSWORD);
			myConn = dataSource.getConnection();
			myPsmt = myConn.prepareStatement(SQL);
			myPsmt.setString(1, dto.getId());
			myPsmt.setString(2, dto.getPw());
			myPsmt.setString(3, dto.getName());
			myPsmt.setString(4, dto.getPhone());
			myPsmt.setString(5, dto.getGender());
			if (myPsmt.executeUpdate() != 0) {
				str = dto.getName();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (!myPsmt.isClosed()) myPsmt.close();
				if (!myConn.isClosed()) myConn.close();
			} catch (Exception e) {
				//e.printStackTrace();
			}
		}
		return str;
	}

}
