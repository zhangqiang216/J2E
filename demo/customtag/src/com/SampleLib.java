package com;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.DynamicAttributes;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SampleLib extends SimpleTagSupport implements DynamicAttributes {
	String user = "";
	String num = "";
	
	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	@Override
	public void doTag() throws JspException, IOException {
		// TODO Auto-generated method stub
		super.getJspContext().getOut().print("hello"+user+"\t"+ num);
	}

	@Override
	public void setDynamicAttribute(String arg0, String arg1, Object arg2) throws JspException {
		// TODO Auto-generated method stub
		//参数名字不定，参数个数不定时调用
	}
	
}
