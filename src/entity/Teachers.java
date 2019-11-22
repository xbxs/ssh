package entity;

public class Teachers {
	
	@Override
	public String toString() {
		return "Teachers [tid=" + tid + ", tname=" + tname + ", tposition="
				+ tposition + ", tsubject=" + tsubject + "]";
	}
	private String tid;
	private String tname;
	private String tposition;
	private String tsubject;
	
	public Teachers() {
		super();
	}
	public Teachers(String tid, String tname, String tposition, String tsubject) {
		super();
		this.tid = tid;
		this.tname = tname;
		this.tposition = tposition;
		this.tsubject = tsubject;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTposition() {
		return tposition;
	}
	public void setTposition(String tposition) {
		this.tposition = tposition;
	}
	public String getTsubject() {
		return tsubject;
	}
	public void setTsubject(String tsubject) {
		this.tsubject = tsubject;
	}
	
}
