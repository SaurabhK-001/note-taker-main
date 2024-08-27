package com.servlets;
import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SaveNoteServlet() {
        super();
    }
	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title =  request.getParameter("title");
			String content = request.getParameter("content");
			Note note = new Note(title, content, new Date());
			//HIBERNATE
			 Session session = FactoryProvider.getFactory().openSession();
			 Transaction ts = session.beginTransaction();
			 session.save(note);
			 ts.commit();
			 session.close();
			 response.setContentType("text/html");
		     response.sendRedirect("all_notes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
