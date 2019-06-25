package domain;

public class PPT {
	private int pptId;//课件编号
	private String pptName; //课件名称
	private int cId;//所属课程编号
	private String pptAttachment;//课件附件名称
	private String attachmentOldName; //课件附件原始名称
	private String uploadTime;//课件上传时间
	private String del;//课件是否删除
	public int getPptId() {
		return pptId;
	}
	public void setPptId(int pptId) {
		this.pptId = pptId;
	}
	public String getPptName() {
		return pptName;
	}
	public void setPptName(String pptName) {
		this.pptName = pptName;
	}
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getPptAttachment() {
		return pptAttachment;
	}
	public void setPptAttachment(String pptAttachment) {
		this.pptAttachment = pptAttachment;
	}
	public String getAttachmentOldName() {
		return attachmentOldName;
	}
	public void setAttachmentOldName(String attachmentOldName) {
		this.attachmentOldName = attachmentOldName;
	}
	public String getUploadTime() {
		return uploadTime;
	}
	public void setUploadTime(String uploadTime) {
		this.uploadTime = uploadTime;
	}
	public String getDel() {
		return del;
	}
	public void setDel(String del) {
		this.del = del;
	}
	@Override
	public String toString() {
		return "PPT [pptId=" + pptId + ", pptName=" + pptName + ", cId=" + cId + ", pptAttachment=" + pptAttachment
				+ ", attachmentOldName=" + attachmentOldName + ", uploadTime=" + uploadTime + ", del=" + del + "]";
	}
	
}
