package com.abc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.abc.model.Model;

@WebServlet("/Register")
public class Register extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String custid = request.getParameter("custid");
		
		String saccno = request.getParameter("accno");      //collect the data in form of string
 		int acccno =  Integer.parseInt(saccno);				//converts string data to int data
		
		String pwd = request.getParameter("pwd");
		
		String sbal = request.getParameter("bal");			//collect the data in form of string
		int bal =  Integer.parseInt(sbal);					//converts string data to int data
		
		String email = request.getParameter("email");
		
		try {
			Model m = new Model();
			m.setName(name);
			m.setCustid(custid);
			m.setAccno(acccno);
			m.setPwd(pwd);
			m.setBal(bal);
			m.setEmail(email);
			
			boolean b = m.register(); 
			
			if(b==true) {
				response.sendRedirect("/BankingApplication/SuccessReg.html");
			}
			else {
				response.sendRedirect("/BankingApplication/FailureReg.html");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
