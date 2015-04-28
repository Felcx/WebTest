package com.felcx.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
    private String user;
    private String pass;
    private InputStream inputStream;
    
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
    public InputStream getResult(){
    	return inputStream;
    }
	@Override
	public String execute() throws Exception {
		inputStream=user.equals("Felcx")&&pass.equals("TZLaio")
				?new ByteArrayInputStream("恭喜你，登录成功！".getBytes("UTF-8"))
		        :new ByteArrayInputStream("对不起，密码错误！".getBytes("UTF-8"));
		return SUCCESS;
	}
     
}
