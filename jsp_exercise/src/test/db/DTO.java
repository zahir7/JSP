package test.db;
import java.sql.Timestamp;
public class DTO {
	private String id;
	private String pw;
	private String age;
	private Timestamp reg;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;  
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public Timestamp getReg() {
		return reg;
	}
	public void setReg(Timestamp reg) {
		this.reg = reg;
	}

}
