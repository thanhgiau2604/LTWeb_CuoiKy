package dao;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import dblayer.DBConnect;
import model.NguoiDung;
public class NDdao implements ObjectDAO{
	public static Map<String, NguoiDung> mapNguoiDung = loadData();
 	public NDdao() {
 	}
 	private static Map<String, NguoiDung> loadData() {
 		Map<String, NguoiDung> mapTemp = new HashMap<>();
 		try {
 			ResultSet rs = new DBConnect().selectData("select * from [USER]");
 			while (rs.next()) {
 				String tenDN = rs.getString(1);
 	            String matKhau = rs.getString(2);
 	            String matKhauC2 = rs.getString(3);
 	            String email = rs.getString(4);
 	            String hoTen = rs.getString(5);
 	            String sDT = rs.getString(6);
 	            String diaChi = rs.getString(7);
 	            int laGiaovien = rs.getInt(8);
 	            int laAdmin = rs.getInt(9);
 	            NguoiDung nd = new NguoiDung(tenDN,matKhau,matKhauC2,email,hoTen,sDT,diaChi,laGiaovien,laAdmin);
 	            mapTemp.put(nd.getTenDN(), nd);
 			}
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
 		return mapTemp;
 	}
 	
 	public boolean checkLogin(String userName, String passWord)
 	{
 		mapNguoiDung=loadData();
 		System.out.println(mapNguoiDung);
 		NguoiDung nd = mapNguoiDung.get(userName); 
 		
 		if (nd!=null)
 		{
 			if (nd.getMatKhau().equals(passWord)) {				
 				return true;
 			}
 			{
 				return false;
 			}
 		}
 	    return false;		
 	}
 	public int RoleNguoiDung(String userName)
 	{
 		NguoiDung nd = mapNguoiDung.get(userName);
 		if (nd!=null)
 		{
 			int laGiaoVien = nd.getLaGiaoVien();
 			int laAdmin = nd.getLaAdmin();
 			if (laGiaoVien==0 && laAdmin==0)
 				return 1;
 			else
 				if (laGiaoVien==1)
 					return 2;
 				else
 					if (laAdmin==1)
 						return 3;
 		}
 		return 0;
 	}

	public static void main(String[] args) {
		NDdao nddao = new NDdao();
 		System.out.println(nddao.mapNguoiDung);
 		System.out.println(nddao.checkLogin("giaunguyen", "123456"));
 		System.out.println(nddao.checkLogin("giaunguyen", "1236456"));
	}
	
	public ResultSet LayDanhSachNguoiDung() throws Exception
	{
		String sql = "SELECT * FROM [USER]";
		DBConnect dbc = new DBConnect();
		ResultSet rs = dbc.selectData(sql);
		return rs;
	}
	public ResultSet LayNguoiDungTheoTenDN(String TenDN) throws Exception
	{
		String sql = "EXECUTE LayNguoiDungTheoTenDN '"+TenDN+"'";
		DBConnect dbc = new DBConnect();
		ResultSet rs = dbc.selectData(sql);
		return rs;
	}
	public boolean CapNhatMatKhau(String MatKhau, String TenDN)
	{
		String sql="EXECUTE CapNhatMatKhau '"+MatKhau+"','"+TenDN+"'";
		try {
			new DBConnect().excuteSQL(sql);		
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return false;
	}
	public ResultSet KiemTraMatKhau(String TenDN, String MatKhau) throws Exception
	{
		String sql = "SELECT DBO.fn_KiemTraMatKhau('"+TenDN+"','"+MatKhau+"')";
		DBConnect dbc = new DBConnect();
		ResultSet rs = dbc.selectData(sql);
		return rs;
	}
	@Override
	public boolean add(Object obj) {
		NguoiDung nd = (NguoiDung) obj;
		String sql = "EXECUTE ThemNguoiDung'"+nd.getTenDN()+"','"+nd.getMatKhau()+"','"+nd.getMatKhauC2()+"','"+nd.getHoTen()+"','"
		+nd.getEmail()+"','"+nd.getsDT()+"','"+nd.getDiaChi()+"',"+String.valueOf(nd.getLaGiaoVien())+","+String.valueOf(nd.getLaAdmin());
		try {
			System.out.println(sql);
			System.out.println(mapNguoiDung);
			new DBConnect().excuteSQL(sql);
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return false;
	}
	@Override
	public boolean edit(Object obj, String id) {
		NguoiDung nd = (NguoiDung) obj;
		String sql = "EXECUTE SuaNguoiDung'"+nd.getTenDN()+"','"+nd.getMatKhauC2()+"','"+nd.getHoTen()+"','"
		+nd.getEmail()+"','"+nd.getsDT()+"','"+nd.getDiaChi()+"'";
		try {
			System.out.println(sql);
			new DBConnect().excuteSQL(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return false;
	}
	@Override
	public boolean delete(String id) {
		return false;
	}

}
