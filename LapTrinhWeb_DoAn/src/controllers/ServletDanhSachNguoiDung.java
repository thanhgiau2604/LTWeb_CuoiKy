package controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.NguoiDung;
import dblayer.DBConnect;
import dao.NguoiDungDAO;
@WebServlet("/ServletDanhSachNguoiDung")
public class ServletDanhSachNguoiDung extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ServletDanhSachNguoiDung() {
        super();
        // TODO Auto-generated constructor stub
    }
	private NguoiDungDAO nguoidungDAO;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try 
		{
			listND(request, response);

		}
		catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	private void listND(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
		List<NguoiDung> listNguoiDung = nguoidungDAO.listAllNguoiDung();
		request.setAttribute("listNguoiDung", listNguoiDung);
		RequestDispacher dispatcher = request.getRequestDispatcher("AD_QLND_DS.jsp");       
		dispatcher.forward(request, response);
    }

}
