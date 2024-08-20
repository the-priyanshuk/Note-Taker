package lulu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import help.HibernateUtil;

/**
 * Servlet implementation class SaveNote
 */
public class SaveNote extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			
			//Title, Content fatch
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			
			Note n = new Note(title, content, new Date());
			
			//Hibernate: save();
			Session  s = HibernateUtil.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(n);
			tx.commit();
			s.close();
			
			//Server
			res.setContentType("text/html");
			PrintWriter out = res.getWriter();
			out.println("<h1 style='text-align:center;'>Note is added succesfully!</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View All Notes</a></h1>");
			
		} catch (Exception e) {
			e.printStackTrace();
			e.getMessage();
		}
	}

}
