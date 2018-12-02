package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.NguoiDung;
import dao.NDdao;

@WebServlet("/ServletDangKyTaiKhoan")
public class ServletDangKyTaiKhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletDangKyTaiKhoan() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String tenDN = request.getParameter("username");
		String matKhau = request.getParameter("password");
		String matKhauC2 = request.getParameter("passwordc2");
		String hoTen = request.getParameter("fullname");
		String email = request.getParameter("email");
		String sDT = request.getParameter("telenum");
		String diaChi = request.getParameter("address");
		String laGV = request.getParameter("radiogv");
		String laTS = request.getParameter("radiots");
		System.out.println(tenDN+"|"+matKhau+"|"+matKhauC2+"|"+hoTen+"|"+email+"|"+sDT+"|"+diaChi+"|"+laGV+"|"+laTS); 
		int isGV = 0,isAd=0;
		if (laGV==null)
			isGV=0; else isGV=1;
		NguoiDung nd = new NguoiDung(tenDN,matKhau,matKhauC2,hoTen,email,sDT,diaChi,isGV,isAd);
		boolean sucess= new NDdao().add(nd);
		if (sucess==false)
		{
			System.out.println("Không thêm dc");
		}
		else
		{
			response.sendRedirect("Guest_DangNhap.jsp");
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
