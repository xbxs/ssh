package entity;

public class Students {
	
	@Override
	public String toString() {
		return "Students [sid=" + sid + ", sname=" + sname + ", saddress="
				+ saddress + ", tid=" + tid + "]";
	}


	private String sid;
	private String sname;
	private String saddress;
	private String tid;
	
	
	public Students() {
		super();
	}
	
	public Students(String sid, String sname, String saddress, String tid) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.saddress = saddress;
		this.tid = tid;
	}


	public String getSid() {
		return sid;
	}


	public void setSid(String sid) {
		this.sid = sid;
	}


	public String getSname() {
		return sname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}


	public String getSaddress() {
		return saddress;
	}


	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}


	public String getTid() {
		return tid;
	}


	public void setTid(String tid) {
		this.tid = tid;
	}


	
}
