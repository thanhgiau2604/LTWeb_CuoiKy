package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.NDdao;


@WebServlet("/ServletDangNhap")
public class ServletDangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletDangNhap() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		NDdao ndao = new NDdao();
		System.out.println(request.getParameter("username")+" "+request.getParameter("password"));
		getServletContext().setAttribute("tenDN",request.getParameter("username"));
		boolean kiemtra  = ndao.checkLogin(request.getParameter("username"), request.getParameter("password"));
		if (kiemtra==false)
		{
			System.out.println("Không đúng rồi!"); 
		}
		else
		{
			System.out.println("Thành công rồi, mừng ghê!"); 
			int role = ndao.RoleNguoiDung(request.getParameter("username"));
			if (role==1)
				response.sendRedirect("TrangChuTS.jsp");
			else
				if (role==2)
					response.sendRedirect("TrangChuGV.jsp");
				else
					if (role==3)
						response.sendRedirect("TrangChuAdmin.jsp");
					else
						System.out.println("Kết quả role=0 không redirect!"); 
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
