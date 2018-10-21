package webapp;
import java.util.ArrayList;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns="/organization")

public class Organization extends HttpServlet{
	
	
	private static final long serialVersionUID = 1L;
	private String name;
	private String address;
	private ArrayList<Team> teams;
	private float rating;
	
	// all members
	public Organization (String _name, String _address,
			ArrayList<Team> _teams, float _rating) {
		this.name = _name;
		this.address = _address;
		this.teams = _teams;
		this.rating = _rating;
	}
	
	// add organization
	public Organization (String _name, String _address,
			ArrayList<Team> _teams) {
		this.name = _name;
		this.address = _address;
		this.teams = _teams;
	}	
	
	// short initialization
	public Organization (String _name, String inAddress) {
		this.name = _name;
		this.address = inAddress;
	}
	
	public String get_name() {
		return name;
	}

	public void set_name(String _name) {
		this.name = _name;
	}

	public String get_address() {
		return address;
	}

	public void set_address(String _address) {
		this.address = _address;
	}

	public ArrayList<Team> get_teams() {
		return teams;
	}

	public void set_teams(ArrayList<Team> _teams) {
		this.teams = _teams;
	}

	public float get_rating() {
		return rating;
	}

	public void set_rating(float _rating) {
		this.rating = _rating;
	}
	
	@SuppressWarnings("unused")
	private float CalculateRating() {
		float rating = 0;
		for (int i = 0; i < teams.size(); i++) {
			rating += teams.get(i).get_rating();
		}
		return (rating / teams.size());
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
