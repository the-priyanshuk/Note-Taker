package lulu;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import help.HibernateUtil;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			int id = Integer.parseInt(req.getParameter("noteid").trim());
			
			Session s = HibernateUtil.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			
			Note n = s.get(Note.class, id);	
			
			n.setTitle(title);
			n.setContent(content);
			n.setAddedDate(new Date());
			
			tx.commit();
			s.close();
			
			res.sendRedirect("all_notes.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			e.getMessage();
		}
	}

}
