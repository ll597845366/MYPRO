package com.KongJian.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.KongJian.manage.mapper.UserMapper;
import com.KongJian.manage.pojo.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public User findUser(String loginUsername) {

		return userMapper.findUser(loginUsername);
	}

	@Override
	public void insertUser(User user) {

		userMapper.insertUser(user);

	}

	@Override
	public String loginRe(String loginUsername) {

		return userMapper.loginRe(loginUsername);
	}

	@Override
	public List<String> signRe() {

		return userMapper.signRe();
	}

	@Override
	public void signInsert(User user) {
		userMapper.signInsert(user);

	}

	@Override
	public String ReloginUsername(String loginUsername) {

		return userMapper.ReloginUsername(loginUsername);
	}

	@Override
	public String Reloginpassword(String loginUsername) {

		return userMapper.Reloginpassword(loginUsername);
	}

	@Override
	public User Reloginnicheng(String loginUsername) {

		return userMapper.Reloginnicheng(loginUsername);
	}

	@Override
	public Integer wanshan(Integer age, String address, String gender, String loginUsername) {

		userMapper.wanshan(age, address, gender, loginUsername);
		return 1;
	}

	@Override
	public User xiugai(String loginUsername) {

		return userMapper.xiugai(loginUsername);
	}

	@Override
	public void xiugaips(String password, String loginUsername) {
		userMapper.xiugaips(password, loginUsername);

	}
	

}
