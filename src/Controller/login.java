package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dologin(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dologin(request, response);
	}

	private void dologin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8"); 
		RequestDispatcher rd=null;
		HttpSession ss= request.getSession();
		String s= (String)ss.getAttribute("username");
		if(s==null||s.equals("")) {  
			String userName= request.getParameter("inputUserName");
			String passWord = request.getParameter("inputPassword");
			ss.setAttribute("pass", passWord);
			ss.setAttribute("username", userName);
//			LOGIN_DAO check = null;
//			try {
//				check = new LOGIN_DAO(ss.getAttribute("host").toString(),ss.getAttribute("username").toString(),ss.getAttribute("pass").toString());
//			} catch (ClassNotFoundException e1) {
//				e1.printStackTrace();
//			}
//			try {
//				if(check.checkUser(userName, passWord)) {  
//					
//					rd = request.getRequestDispatcher("WEB-INF/cpanel/quanly.jsp");
//					rd.forward(request, response);
//				}
//				else{  
//			        request.setAttribute("error", "Username hoặc password không đúng, vui lòng nhập lại");  
//			        rd=request.getRequestDispatcher("WEB-INF/Login.jsp");  
//			        rd.forward(request,response);  
//			    }  
//			} catch (ClassNotFoundException | SQLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
			if(userName.equals("sv")) {
				rd=request.getRequestDispatcher("redirectTrangThi");  
		        rd.forward(request,response);  
			}if (userName.equals("gv")) {
				rd=request.getRequestDispatcher("redirectCpanel");  
		        rd.forward(request,response);  
			}
		}
		else {
			rd = request.getRequestDispatcher("WEB-INF/cPanel/quanly.jsp");
			rd.include(request, response);
		}
	}

}
