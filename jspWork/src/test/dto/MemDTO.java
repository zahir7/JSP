package test.dto;
/*
 * 회원 한명의 정보를 담을수 있는 DTO 객체
 */
public class MemDTO {
	private int num;
	private String name;
	private String addr;
	//디폴트 생성자가 있어야된다.
	public MemDTO(){}
	//인자로 모든 필드가 전달되는 생성자
	public MemDTO(int num, String name, String addr) {
		
		this.num = num;
		this.name = name;
		this.addr = addr;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
}











