package Model;
import java.sql.Date;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import Objects.DeThi;
public class DETHI_DAO {
	private Connection conn;
	public DETHI_DAO(String username,String password)throws Exception {
		ConnectDB database = new ConnectDB();
		conn=database.Connect(username,password);
	}
	public void themDeThi( int HocKy, String ThoiGian,int thoiLuong,  int SoCHDe,int SoCHTB,int SoCHKho, float ThangDiem,boolean IsActive ) throws SQLException {
		String sql = "{call sp_ThemDeThi(?,?,?,?,?,?,?)}";
		CallableStatement cstm = conn.prepareCall(sql);
		cstm.setInt(1, HocKy);
		cstm.setString(2, ThoiGian);
		cstm.setInt(3, thoiLuong);
		cstm.setInt(4,SoCHDe);
		cstm.setInt(4,SoCHTB);
		cstm.setInt(4,SoCHKho);
		cstm.setFloat(5,ThangDiem);
		cstm.setBoolean(6,IsActive);
		cstm.executeUpdate();
	}
	public void XoaDeThi( int MaDeThi) throws SQLException {
		String sql = "{call sp_XoaDeThi(?)}";
		CallableStatement cstm = conn.prepareCall(sql);
		cstm.setInt(1, MaDeThi);
		cstm.executeUpdate();
	}
	public void suaDeThi(int MaDeThi, int HocKy, String ThoiGianBD,int ThoiLuong, int SoCHDe,int SoCHTB,int SoCHKho, float ThangDiem,boolean IsActive) throws SQLException {
		Statement st= conn.createStatement();
		String sql = "Update dethi \r\n" + 
				"    	Set\r\n" + 
				"     		HocKy = "+HocKy+",\r\n" + 
				"			ThoiGianBatDau = "+"'"+ThoiGianBD+"'"+",\r\n" + 
				"			ThoiLuong="+ThoiLuong+",\r\n" + 
				"			SoCHDe="+SoCHDe+",\r\n" + 
				"			SoCHTrungBinh="+SoCHTB+",\r\n" + 
				"			SoCHKho="+SoCHKho+",\r\n" + 
				"			ThangDiem="+ThangDiem+",\r\n" + 
				"			IsActive="+IsActive+"\r\n" + 
				"where MaDethi="+MaDeThi+";";
		st.executeUpdate(sql);
	}
	public List<DeThi> xemDSDeThi() throws SQLException {
		List<DeThi> ds = new ArrayList<DeThi>();
		Statement st= conn.createStatement();
		String sql = "select * from DeThi";
		ResultSet rs=st.executeQuery(sql);
		while (rs.next()) {
		 DeThi dt= new DeThi();
		 dt.setMaDeThi(rs.getInt("MaDeThi"));
		 dt.setHocKy(rs.getInt("HocKy"));
		 java.util.Date date = null;
		 Timestamp timestamp = rs.getTimestamp(3);
		 if (timestamp != null)
		     date = new java.util.Date(timestamp.getTime());
		 SimpleDateFormat ft =new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
		
		 dt.setThoiGianBatDau(ft.format(date));
		 dt.setThoiLuong(rs.getInt("ThoiLuong"));
		 dt.setSoCHDe(rs.getInt("SoCHDe"));
		 dt.setSoCHTB(rs.getInt("SoCHTrungBinh"));
		 dt.setSoCHKho(rs.getInt("SoCHKho"));
		 dt.setThangDiem(rs.getFloat("ThangDiem"));
		 dt.setIsActive(rs.getBoolean("IsActive"));
		 ds.add(dt);
		}
		return ds;
	}
}
