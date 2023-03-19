package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.Class;
import entity.Student;

public class StudentDB {
	public List<Student> getAllStudents() throws SQLException {	
		List<Student> students = new ArrayList<Student>();
		
		String sql = "select * from students";
		Connection conn = DBConnection.dbConn();
		
		Statement stat = conn.createStatement();
		ResultSet rs = stat.executeQuery(sql);
		
		while(rs.next()) {
			Student st = new Student();
			st.setId(rs.getInt(1));
			st.setName(rs.getString(2));
			st.setEmail(rs.getString(3));
			st.setReq_sub_id(rs.getInt(4));
			st.setClass_id(rs.getInt(5));
			students.add(st);
		}
		return students;
	}
	
	public boolean updateStudentClassById(int classId, int id) throws SQLException
	{
		String sql = "update students set class_id=? where id=?";
		Connection conn = DBConnection.dbConn();
		PreparedStatement stat = conn.prepareStatement(sql);
		stat.setInt(1, classId);
		stat.setInt(2, id);
		try {
			stat.execute();
		}catch(Exception e)
		{
			System.out.println("error "+e.getMessage());
			return false;
		}
		return true;
	}
	
	public List<String> getEmailStudentByClassId(int class_id) throws SQLException {
		List<String> students = new ArrayList<String>();
		String sql = "select email from students where class_id=?";
		Connection conn = DBConnection.dbConn();
		PreparedStatement stat = conn.prepareStatement(sql);
		stat.setInt(1, class_id);
		ResultSet rs = stat.executeQuery();
		String name = null;
		while(rs.next()) {
			name = rs.getString(1);
			students.add(name);
	}
		return students;
	}
}
