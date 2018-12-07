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

import Model.TAIKHOANLOPHOC_DAO;
import Objects.dsTaiKhoanLopHoc;

@WebServlet("/redirectTaiKhoanLopHoc")
public class redirectTaiKhoanLopHoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public redirectTaiKhoanLopHoc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession ss= request.getSession();
		String s= (String)ss.getAttribute("username");
		int ma=Integer.parseInt(request.getParameter("maLopHoc"));
		if(s==null||s=="") {
	        RequestDispatcher rd=request.getRequestDispatcher("Login_test.jsp");  
	        rd.forward(request,response); 
		}
		else {
			TAIKHOANLOPHOC_DAO lh = null;
			try {
				lh = new TAIKHOANLOPHOC_DAO(ss.getAttribute("username").toString(),ss.getAttribute("pass").toString());
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			dsTaiKhoanLopHoc ds= new dsTaiKhoanLopHoc();
			try {
				ds.setDs(lh.xemDSTaiKhoanLopHoc(ma));
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.setAttribute("dsLH",ds );
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/cPanel/SVLopHoc.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}