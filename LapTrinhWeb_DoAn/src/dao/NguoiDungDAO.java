package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.NguoiDung;
import dblayer.DBConnect;

public class NguoiDungDAO {
	 public List<NguoiDung> listAllNguoiDung() throws SQLException {
	        List<NguoiDung> listND = new ArrayList<>();
	         
	        String sql = "SELECT TenDN, MatKhau, MatKhauC2, Email, HoTen, SDT FROM NguoiDung";
	         
	        DBConnect.getConnection();
	         
	        /*Statement statement = DBConnect.conn.createStatement();
	        ResultSet resultSet = statement.executeQuery(sql);
	         
	        while (resultSet.next()) {
	            String TenDN = resultSet.getString("TenDN");
	            String MatKhau = resultSet.getString("MatKhau");
	            String MatKhauC2 = resultSet.getString("MatKhauC2");
	            String Email = resultSet.getString("Email");
	            String HoTen = resultSet.getString("HoTen");
	            String SDT = resultSet.getString("SDT");
	            String DiaChi = resultSet.getString("DiaChi");
	             
	            NguoiDung nd = new NguoiDung(TenDN,MatKhau,MatKhauC2,Email,HoTen,SDT,DiaChi);
	            listND.add(nd);
	        }
	         
	        resultSet.close();
	        statement.close();
	         
	        //DBConnect.disconnect();
*/	         
	        return listND;
	    }
}
