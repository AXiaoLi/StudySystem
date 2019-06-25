package domain;

public class Teacher {
	private int teaId;
	private String teaNum;
	private String teaRealname;
	private  String teaSex;
	private String loginPw;
	public int getTeaId() {
		return teaId;
	}
	public void setTeaId(int teaId) {
		this.teaId = teaId;
	}
	
	public String getTeaNum() {
		return teaNum;
	}
	public void setTeaNum(String teaNum) {
		this.teaNum = teaNum;
	}
	public String getTeaRealname() {
		return teaRealname;
	}
	public void setTeaRealname(String teaRealname) {
		this.teaRealname = teaRealname;
	}
	public String getTeaSex() {
		return teaSex;
	}
	public void setTeaSex(String teaSex) {
		this.teaSex = teaSex;
	}
	public String getLoginPw() {
		return loginPw;
	}
	public void setLoginPw(String loginPw) {
		this.loginPw = loginPw;
	}
	
}
