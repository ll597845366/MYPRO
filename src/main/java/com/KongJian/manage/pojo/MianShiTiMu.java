package com.KongJian.manage.pojo;

import java.io.Serializable;

public class MianShiTiMu implements Serializable{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private Integer id;
private String question;
private String answers;
private Double type;
private Integer pid;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Integer getPid() {
	return pid;
}
public void setPid(Integer pid) {
	this.pid = pid;
}
public String getQuestion() {
	return question;
}
public void setQuestion(String question) {
	this.question = question;
}
public String getAnswers() {
	return answers;
}
public void setAnswers(String answers) {
	this.answers = answers;
}
public Double getType() {
	return type;
}
public void setType(Double type) {
	this.type = type;
}
public static long getSerialversionuid() {
	return serialVersionUID;
}

}
