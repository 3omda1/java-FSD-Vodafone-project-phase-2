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

import database.ClassDB;
import database.SubjectDB;
import logic.operation;

/**
 * Servlet implementation class AssignSubServlet
 */
@WebServlet("/assignSub")
public class AssignSubServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignSubServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String SubID = (String) request.getParameter("sid");
		operation ID = new operation();
		int sid = ID.convert(SubID);
		System.out.println(sid);
		HttpSession session = request.getSession();
		String CID = (String) session.getAttribute("cid");
		int cid = ID.convert(CID);
		System.out.println(cid);
		ClassDB db = new ClassDB();
		try {
			if(db.updateSubClassById(sid, cid)) {
				response.sendRedirect("admin");
				session.removeAttribute("cid");
			}
			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("assignSub.jsp");
				PrintWriter out = response.getWriter();
				out.println("<p>Pleae Enter Valid Number</p>");
				dispatcher.include(request, response);	
			}
		}catch (SQLException | IOException e) {
			 e.printStackTrace();
		}
	}
}

	


