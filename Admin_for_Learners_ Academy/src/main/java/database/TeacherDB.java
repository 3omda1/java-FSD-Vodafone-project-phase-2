package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.Teacher;

public class TeacherDB {
	public List<Teacher> getAllTeachers() throws SQLException
	{
		List<Teacher> teachers = new ArrayList<Teacher>();
		String sql = "select * from teachers";
		Connection conn = DBConnection.dbConn();
		Statement stat = conn.createStatement();
		ResultSet rs = stat.executeQuery(sql);
		while(rs.next()) {
			Teacher teacher = new Teacher();
			teacher.setId(rs.getInt(1));
			teacher.setName(rs.getString(2));
			teachers.add(teacher);
		}
		return teachers;
	}
	
	public String getTeacherById(int id) throws SQLException {
		String sql = "select name from teachers where id=?";
		Connection conn = DBConnection.dbConn();
		PreparedStatement stat = conn.prepareStatement(sql);
		stat.setInt(1, id);
		ResultSet rs = stat.executeQuery();
		String name = null;
		while(rs.next()) {
			name = rs.getString(1);
	}
		return name;
	}
}
