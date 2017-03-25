package test.dto;

public class FileupDTO {
	private int num;
	private String writer;
	private String title;
	private String content;
	private String orgFileName;
	private String saveFileName;
	//디폴트 생성자
	public FileupDTO(){}
	public FileupDTO(int num, String writer, String title, String content,
			String orgFileName, String saveFileName) {
		this.num = num;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.orgFileName = orgFileName;
		this.saveFileName = saveFileName;
	}
	//setter, getter 메소드
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getOrgFileName() {
		return orgFileName;
	}
	public void setOrgFileName(String orgFileName) {
		this.orgFileName = orgFileName;
	}
	public String getSaveFileName() {
		return saveFileName;
	}
	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}
	
}







