package webapp;
import java.util.ArrayList;



public class Team {
	
	
	String name;
	double rating=15.2; 
	ArrayList<String> feedback;
	Organization organization;
	public Team(String _name, double _rating, ArrayList<String> _feedback, Organization _organization) {
		this.name=_name;
		this.rating=_rating;
		this.feedback=_feedback;
		this.organization=_organization;
	}
	public Team(String _name, double _rating,  Organization _organization) {
		this.name=_name;
		this.rating=_rating;
		this.organization=_organization;
		
	}
	public Organization get_organization() {
		return this.organization;
	}
	public Team get_team() {
		return this;
	}
	public double get_rating() {
		return this.rating;
	}
	public void set_rating(double _rating) {
		this.rating=_rating;
	}
	
	
}
