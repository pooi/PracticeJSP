package com.javalec.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ModifyOk
 */
@WebServlet("/ModifyOk")
public class ModifyOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Connection connection;
	private Statement stmt;
	private HttpSession httpSession;
	
	private String name, id, pw, phone1, phone2, phone3, gender;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		request.setCharacterEncoding("EUC-KR");
		httpSession = request.getSession();

		name = request.getParameter("name");
		id = (String)httpSession.getAttribute("id");
		pw = request.getParameter("pw");
		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");
		gender = request.getParameter("gender");
		
		if(pwConfirm()) {
			System.out.println("OK");
			
			String query = String.format("UPDATE member SET name='%s', phone1='%s', phone2='%s', phone3='%s', gender='%s' WHERE id='%s';", name, phone1, phone2, phone3, gender, id);
			try {
				connection = DBConn.getMySqlConnection();
				stmt = connection.createStatement();
				int i = stmt.executeUpdate(query);
				if(i==1) {
					System.out.println("Update Success");
					httpSession.setAttribute("name", name);
					response.sendRedirect("modifyResult.jsp");
				}else {
					System.out.println("Update Fail");
					response.sendRedirect("modify.jsp");
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else {
			System.out.println("NG");
		}
		
		
	}
	
	private boolean pwConfirm() {
		String sessionPw = (String)httpSession.getAttribute("pw");
		return sessionPw.equals(pw);
	}

}
