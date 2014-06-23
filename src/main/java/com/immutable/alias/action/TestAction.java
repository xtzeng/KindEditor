package com.immutable.alias.action;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.immutable.alias.base.BaseAction;
import com.immutable.alias.utils.StringUtils;
import com.opensymphony.xwork2.Result;

@Controller("testAction")
@Scope("prototype")
public class TestAction extends BaseAction{

	/**
	 */
	private static final long serialVersionUID = 1L;

	private String content;
	
	private String processedContent;
	
	public Result hello() {
		String paramsString = ServletActionContext.getRequest().getParameter("content");
		System.out.println(paramsString);
		System.out.println(content);
		processedContent = StringUtils.htmlspecialchars(content);
		return dispatch("/kindeditor/jsp/demo2.jsp");
	}

	
	  public void addActionError(String anErrorMessage){
		   String s = anErrorMessage;
		   System.out.println(s);
	  }
	  
	  public void addActionMessage(String aMessage){
		   String s = aMessage;
		   System.out.println(s);
		  
	  }
	  
	  public void addFieldError(String fieldName, String errorMessage){
		   String s = errorMessage;
		   String f = fieldName;
		   System.out.println(s);
		   System.out.println(f);
		  
	  }


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getProcessedContent() {
		return processedContent;
	}


	public void setProcessedContent(String processedContent) {
		this.processedContent = processedContent;
	}

	  
	
	
	
}
