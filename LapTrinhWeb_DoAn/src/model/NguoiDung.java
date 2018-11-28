package model;

public class NguoiDung {
	private String TenDN;
	private String MatKhau;
	private String MatKhauC2;
	private String HoTen;
	private String Email;
	private String SDT;
	private String DiaChi;
	public NguoiDung(String tenDN, String matKhau, String matKhauC2, String hoTen, String email, String sDT,
			String diaChi) {
		super();
		TenDN = tenDN;
		MatKhau = matKhau;
		MatKhauC2 = matKhauC2;
		HoTen = hoTen;
		Email = email;
		SDT = sDT;
		DiaChi = diaChi;
	}
	public String getTenDN() {
		return TenDN;
	}
	public void setTenDN(String tenDN) {
		TenDN = tenDN;
	}
	public String getMatKhau() {
		return MatKhau;
	}
	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}
	public String getMatKhauC2() {
		return MatKhauC2;
	}
	public void setMatKhauC2(String matKhauC2) {
		MatKhauC2 = matKhauC2;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
}
