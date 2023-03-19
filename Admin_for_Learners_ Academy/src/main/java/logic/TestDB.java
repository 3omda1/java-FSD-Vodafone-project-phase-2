package logic;

import java.sql.SQLException;

import database.ClassDB;
import database.SubjectDB;
import database.TeacherDB;
import entity.Subject;
import entity.Teacher;
import entity.Class;
public class TestDB {

	public static void main(String[] args) {
		SubjectDB db = new SubjectDB();
		ClassDB cb = new ClassDB();
		TeacherDB te = new TeacherDB();
		try {
			
	//		for(Subject s : db.getAllSubjects()) 
	//			System.out.println(s);
			
			//for(Class c : cb.getAllClasses()) {
			//	System.out.println(c);
				//String teacherName;
				//teacherName = te.getTeacherById(c.getTeachID());
				//System.out.println(teacherName);
			//}
			
			for(Teacher t : te.getAllTeachers()) 
				System.out.println(t);
			
		//	String name = te.getTeacherById(2);
		//	System.out.println(name);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
