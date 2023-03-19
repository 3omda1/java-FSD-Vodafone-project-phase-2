package database;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.Class;

public class ClassDB {
	public List<Class> getAllClasses() throws SQLException {
		List<Class> classes = new ArrayList<Class>();
		
		String sql = "select * from classes";
		Connection conn = DBConnection.dbConn();
		
		Statement stat = conn.createStatement();
		ResultSet rs = stat.executeQuery(sql);
		while(rs.next()) {
			Class cl = new Class();
			cl.setId(rs.getInt(1));
			cl.setStarting_day(rs.getString(2));
			cl.setEnding_day(rs.getString(3));
			cl.setTime(rs.getString(4));
			cl.setSubid(rs.getInt(5));
			cl.setTeachID(rs.getInt(6));
			classes.add(cl);
		}
		return classes;
	}
	
	public boolean updateSubClassById(int subid, int id) throws SQLException
	{

		String sql = "update classes set subID=? where id=?";
		Connection conn = DBConnection.dbConn();
		PreparedStatement stat = conn.prepareStatement(sql);
		stat.setInt(1, subid);
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
	
	public boolean updateTeachClassById(int teacherId, int id) throws SQLException
	{

		String sql = "update classes set teacherID=? where id=?";
		Connection conn = DBConnection.dbConn();
		PreparedStatement stat = conn.prepareStatement(sql);
		stat.setInt(1, teacherId);
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
}
