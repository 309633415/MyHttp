package jbpm.vo;

public class QingJiaVO {
	private Integer qingjiaid;
	private Integer userId;
	private String content;
	private Long taskId;
	private String taskName;
	private String nodeName;
	private String transition;
	private boolean issignalling;
	public boolean isIssignalling() {
		return issignalling;
	}
	public void setIssignalling(boolean issignalling) {
		this.issignalling = issignalling;
	}
	public String getTransition() {
		return transition;
	}
	public void setTransition(String transition) {
		this.transition = transition;
	}
	public Integer getQingjiaid() {
		return qingjiaid;
	}
	public void setQingjiaid(Integer qingjiaid) {
		this.qingjiaid = qingjiaid;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Long getTaskId() {
		return taskId;
	}
	public void setTaskId(Long taskId) {
		this.taskId = taskId;
	}
	public String getTaskName() {
		return taskName;
	}
	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}
	public String getNodeName() {
		return nodeName;
	}
	public void setNodeName(String nodeName) {
		this.nodeName = nodeName;
	}
	
}
