package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.NDdao;
import model.NguoiDung;

@WebServlet("/ServletThayDoiThongTin")
public class ServletThayDoiThongTin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletThayDoiThongTin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String tenDN = request.getParameter("username");
		String matKhauC2 = request.getParameter("mkc2");
		String hoTen = request.getParameter("fullname");
		String email = request.getParameter("email");
		String sDT = request.getParameter("telenum");
		String diaChi = request.getParameter("address");
		int laGV = (Integer)getServletContext().getAttribute("laGiaoVien");
		int laAdmin = (Integer)getServletContext().getAttribute("laAdmin");
		System.out.println(tenDN+"|"+matKhauC2+"|"+hoTen+"|"+email+"|"+sDT+"|"+diaChi);
		NguoiDung nd = new NguoiDung(tenDN,"",matKhauC2,hoTen,email,sDT,diaChi,0,0);
		new NDdao().edit(nd, tenDN);
		if (laGV==1)
			response.sendRedirect("TrangChuGV.jsp");
		else
			if (laAdmin==1)
				response.sendRedirect("TrangChuAdmin.jsp"); 
			else
				if (laGV==0 && laAdmin==0)
					response.sendRedirect("TrangChuTS.jsp"); 
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
