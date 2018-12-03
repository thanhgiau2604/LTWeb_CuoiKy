package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletDoiMatKhau")
public class ServletDoiMatKhau extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletDoiMatKhau() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String tenDN = request.getParameter("username");
		String matKhaucu = request.getParameter("passwordold");
		String matKhaumoi = request.getParameter("passwordnew");
		String nlmatkhau = request.getParameter("repassword");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
