<%@page import="com.cafe24.guestbook.dao.GuestbookDao"%>
<%@page import="com.cafe24.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");	// Body 부분에 붙어서 오기 때문에 이걸 해줘야 한글깨짐 해결
	
	String name = request.getParameter("name");
	String password = request.getParameter("password");	
	String contents = request.getParameter("contents");

	GuestbookVo vo = new GuestbookVo();
	
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect("/guestbook/index.jsp");
%>
