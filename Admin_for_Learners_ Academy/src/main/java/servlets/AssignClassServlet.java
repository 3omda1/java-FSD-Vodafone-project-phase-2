package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.StudentDB;
import database.SubjectDB;
import logic.operation;

/**
 * Servlet implementation class AssignSubServlet
 */
@WebServlet("/assignClass")
public class AssignClassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignClassServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ClassID = (String) request.getParameter("cid");
		operation ID = new operation();
		int cid = ID.convert(ClassID);
	;
		HttpSession session = request.getSession();
		String STUID = (String) session.getAttribute("stid");
		int stid = ID.convert(STUID);
	
		StudentDB db = new StudentDB();
		try {
			if(db.updateStudentClassById(cid, stid)) {
				response.sendRedirect("student.jsp");
				session.removeAttribute("cid");
			}
			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("assignClass.jsp");
				PrintWriter out = response.getWriter();
				out.println("<p>Pleae Enter Valid Number</p>");
				dispatcher.include(request, response);	
			}
		}catch (SQLException | IOException e) {
			 e.printStackTrace();
		}
	}
}
