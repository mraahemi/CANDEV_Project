package webapp;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns="/category")
public class Category extends HttpServlet{
	//variables
	
	private static final long serialVersionUID = 1L;
	String _type;
	ArrayList <Sport> _sport;

	public ArrayList<Sport> getSport() {
		return _sport;
	}

	public void set_sport(ArrayList<Sport> _sport) { //
		this._sport = new ArrayList<Sport>();
	}

	public String getType() { //get type
		return _type;
	}

	public void setType(String type) { //set type
		this._type = type;
	}
	
	public void addSport(ArrayList<Sport> _sport , Sport new_sport) {
		
		int listSize = _sport.size();
		for(int i = 0; i < listSize; ++i)
		  _sport.add(new_sport);
	}
	
	public void removeSport (ArrayList<Sport> _sport , Sport old_sport) {
		
		int listSize = _sport.size();
		for(int i = 0; i < listSize; ++i) {
			if (old_sport == _sport.get(i)) {
				_sport.remove(i);
				
			}
		}
		
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Yahoo!!!!!!!!</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("My First Servlet");
		out.println("</body>");
		out.println("</html>");

	}

}
