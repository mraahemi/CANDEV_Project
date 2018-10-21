package webapp;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/teamServlet")
public class TeamServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.getRequestDispatcher("WEB-INF/views/feedback.jsp").forward(request, response);

	}
@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.getRequestDispatcher("WEB-INF/views/feedback.jsp").forward(request, response);
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String feedback=request.getParameter("message");
		response.getWriter().println(name+email+feedback);
	}
}
