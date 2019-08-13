package com.KongJian.manage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.KongJian.manage.pojo.Student;
import com.KongJian.manage.service.StudentService;


@Controller
@RequestMapping("/")
public class StudentController {
	@Autowired
private StudentService studentService;

@RequestMapping("findpage")
@ResponseBody
public List<Student> findStudent() {
	
	List<Student> list =studentService.findStudent();
	System.out.println(list);
	
	return list;
	
}
@RequestMapping("testpathvariable/{id}")
@ResponseBody
public Integer TestPathvariable(@PathVariable("id") Integer id) {
	System.out.println(id);
	
	
	return id;
	
	
	
}
}
