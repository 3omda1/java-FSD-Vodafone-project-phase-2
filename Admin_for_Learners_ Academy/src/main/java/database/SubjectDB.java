package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.Subject;

public class SubjectDB {

	public List<Subject> getAllSubjects() throws SQLException
	{
		List<Subject> subjects = new ArrayList<Subject>();
		String sql = "select * from subjects";
		Connection conn = DBConnection.dbConn();
		Statement stat = conn.createStatement();
		ResultSet rs = stat.executeQuery(sql);
		while(rs.next()) {
			Subject sub = new Subject();
			sub.setId(rs.getInt(1));
			sub.setName(rs.getString(2));
			subjects.add(sub);
		}
		return subjects;
	}
	
	public String getSubjectById(int id) throws SQLException {
		String sql = "select subName from subjects where id=?";
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


