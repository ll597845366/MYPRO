package com.KongJian.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.KongJian.manage.mapper.StudentMapper;
import com.KongJian.manage.pojo.Student;
@Service
public class StudentServiceImpl implements StudentService{
	@Autowired()
	private StudentMapper studentMapper;
	@Override
	public List<Student> findStudent() {
		System.out.println(studentMapper.findStudent());
		return studentMapper.findStudent();
	}
  
}
