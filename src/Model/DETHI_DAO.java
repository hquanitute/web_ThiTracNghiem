package Model;
import java.sql.Date;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Objects.DeThi;
public class DETHI_DAO {
	private Connection conn;
	public DETHI_DAO(String username,String password)throws Exception {
		ConnectDB database = new ConnectDB();
		conn=database.Connect(username,password);
	}
	public void themDeThi( int MaDeThi, int HocKy, Date ThoiGian, int SoCauHoi, float ThangDiem,boolean IsActive ) throws SQLException {
		String sql = "{call sp_ThemDeThi(?,?,?,?,?,?,?)}";
		CallableStatement cstm = conn.prepareCall(sql);
		cstm.setInt(1, MaDeThi);
		cstm.setInt(2, HocKy);
		cstm.setDate(3, ThoiGian);
		cstm.setInt(4,SoCauHoi);
		cstm.setFloat(5,ThangDiem);
		cstm.setBoolean(6,IsActive);
		cstm.executeUpdate();
	}
	public void XoaDeThi( int MaDeThi, int HocKy) throws SQLException {
		String sql = "{call sp_XoaDeThi(?,?)}";
		CallableStatement cstm = conn.prepareCall(sql);
		cstm.setInt(1, MaDeThi);
		cstm.setInt(2, HocKy);
		cstm.executeUpdate();
	}
	public void suaDeThi(int MaDeThi, int HocKy, Date ThoiGian, int SoCauHoi, float ThangDiem,boolean IsActive) throws SQLException {
		String sql = "{call sp_SuaDeThi(?,?,?,?,?,?,?)}"; 
		CallableStatement cstm = conn.prepareCall(sql);
		cstm.setInt(1, MaDeThi);
		cstm.setInt(2, HocKy);
		cstm.setDate(3, ThoiGian);
		cstm.setInt(4,SoCauHoi);
		cstm.setFloat(5,ThangDiem);
		cstm.setBoolean(6,IsActive);
		cstm.executeUpdate();
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
		 dt.setThoiGian(rs.getDate("ThoiGian"));
		 dt.setSoCauHoi(rs.getInt("SoCauHoi"));
		 dt.setThangDiem(rs.getFloat("ThangDiem"));
		 dt.setIsActive(rs.getBoolean("IsActive"));
		 ds.add(dt);
		}
		return ds;
	}
}
