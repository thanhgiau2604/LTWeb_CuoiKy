package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.NDdao;
import java.sql.ResultSet;
@WebServlet("/ServletQuenMatKhau")
public class ServletQuenMatKhau extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletQuenMatKhau() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String CheckMatKhau = (String)getServletContext().getAttribute("CheckC2");
		System.out.println(CheckMatKhau);
		ResultSet rs = null;
		PrintWriter out = response.getWriter();
		int Ktra=0;
		if (CheckMatKhau==null)
		{
			String username = request.getParameter("username");
			String mkc2 = request.getParameter("matkhauc2");
			try {
				rs = new NDdao().KiemTraMatKhauC2(username,mkc2);
				while (rs.next())
					Ktra = rs.getInt(1);
				System.out.println(Ktra);
			} catch (Exception e) {
				e.printStackTrace();
			}
			if (Ktra==0)
			{
				out.println("<script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js\"></script>");
				out.println("<script type=\"text/javascript\" src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>");
				out.println("<script>");
				out.println("$(document).ready(function(){");
				out.println("swal(\"Thông báo\",\"Tên đăng nhập hoặc mật khẩu C2 không đúng\",\"error\")");
				out.println("});");
				out.println("</script>");
				RequestDispatcher rd = request.getRequestDispatcher("Guest_QuenMatKhau.jsp");
				rd.include(request, response);
				getServletContext().setAttribute("CheckC2","false"); 
			}
			else
			{
				getServletContext().setAttribute("CheckC2","true"); 
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
