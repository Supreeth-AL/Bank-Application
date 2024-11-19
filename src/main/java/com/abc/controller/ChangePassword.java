package com.abc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.el.parser.BooleanNode;
import org.apache.tomcat.util.log.UserDataHelper.Mode;

import com.abc.model.Model;

@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pwd = request.getParameter("npwd");
		HttpSession session = request.getSession();
			System.out.println("1");
			int accno = (int) session.getAttribute("accno");
			System.out.println("2");
			try {
				Model m = new Model();
				m.setAccno(accno);
				m.setPwd(pwd);
				System.out.println(pwd);
				boolean b = m.ChangePwd();
				System.out.println(b);
				if(b == true) {
					response.sendRedirect("/BankingApplication/ChangePwdSuccess.html");
					System.out.println("sucss");
					
				} else {
					response.sendRedirect("/BankingApplication/ChangePwdFail.html");
					System.out.println("faill");
				}
				
				
			} 
			catch (Exception e) {
				e.printStackTrace();
			}
		
	}

}
