package com.KongJian.manage.pojo;

import com.KongJian.pojo.BasePojo;

public class Student extends BasePojo{
private  Integer id;
private String name;
private String gender;
private Integer age;
private String tel;
private String school;
private String grade;
private String userName;
private String password;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public Integer getAge() {
	return age;
}
public void setAge(Integer age) {
	this.age = age;
}
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getSchool() {
	return school;
}
public void setSchool(String school) {
	this.school = school;
}
public String getGrade() {
	return grade;
}
public void setGrade(String grade) {
	this.grade = grade;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "Student [id=" + id + ", name=" + name + ", gender=" + gender + ", age=" + age + ", tel=" + tel + ", school="
			+ school + ", grade=" + grade + ", userName=" + userName + ", password=" + password + ", getId()=" + getId()
			+ ", getName()=" + getName() + ", getGender()=" + getGender() + ", getAge()=" + getAge() + ", getTel()="
			+ getTel() + ", getSchool()=" + getSchool() + ", getGrade()=" + getGrade() + ", getUserName()="
			+ getUserName() + ", getPassword()=" + getPassword() + ", getCreatedTime()=" + getCreatedTime()
			+ ", getUpdatedTime()=" + getUpdatedTime() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
			+ ", toString()=" + super.toString() + "]";
}


}
