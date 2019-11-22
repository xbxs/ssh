package entity;

public class TeacherStudents {

	
	@Override
	public String toString() {
		return "TeacherStudents [sid=" + sid + ", sname=" + sname
				+ ", saddress=" + saddress + ", tname=" + tname + ", tid="
				+ tid + "]";
	}
	public TeacherStudents(String sid, String sname, String saddress,
			String tname, String tid) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.saddress = saddress;
		this.tname = tname;
		this.tid = tid;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public TeacherStudents() {
		super();
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
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	private String sid;
	private String sname;
	private String saddress;
	private String tname;
	private String tid;
}
