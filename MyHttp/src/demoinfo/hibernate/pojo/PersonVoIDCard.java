package demoinfo.hibernate.pojo;

public class PersonVoIDCard {
	private int cid;
	private int pid;
	private String name;
	private String no;
	
	public PersonVoIDCard( int cid, int pid,String name, String no){
		this.cid=cid;
		this.pid=pid;
		this.name=name;
		this.no=no;
	}
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}

	
}
