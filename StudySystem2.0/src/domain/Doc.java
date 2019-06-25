package domain;

public class Doc {
	private int docId;//文档编号
	private String docName; //文档名称
	private int cId;//所属课程编号
	private String docAttachment;//文档附件名称
	private String attachmentOldName; //文档附件原始名称
	private String uploadTime;//文档上传时间
	private String del;//文档是否删除
	public int getDocId() {
		return docId;
	}
	public void setDocId(int docId) {
		this.docId = docId;
	}
	public String getDocName() {
		return docName;
	}
	public void setDocName(String docName) {
		this.docName = docName;
	}
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getDocAttachment() {
		return docAttachment;
	}
	public void setDocAttachment(String docAttachment) {
		this.docAttachment = docAttachment;
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
		return "Doc [docId=" + docId + ", docName=" + docName + ", cId=" + cId + ", docAttachment=" + docAttachment
				+ ", attachmentOldName=" + attachmentOldName + ", uploadTime=" + uploadTime + ", del=" + del + "]";
	}

}
