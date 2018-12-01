package Model;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Objects.DangNhap;
public class DANGNHAP_DAO {
	private Connection conn;
	public DANGNHAP_DAO(String username,String password)throws Exception {
		ConnectDB database = new ConnectDB();
		conn=database.Connect(username,password);
	}
	public void themDangNhap( int MaDangNhap, String Email,String MatKhau,int LoaiTaiKhoan  ) throws SQLException {
		String sql = "{call sp_ThemDangNhap(?,?,?,?)}";
		CallableStatement cstm = conn.prepareCall(sql);
		cstm.setString(1,Email);
		cstm.setString(2, MatKhau);
		cstm.setInt(3,LoaiTaiKhoan);
		cstm.executeUpdate();
	}
	public List<DangNhap> xemDSDangNhap() throws SQLException {
		List<DangNhap> ds = new ArrayList<DangNhap>();
		Statement st= conn.createStatement();
		String sql = "select * from DangNhap";
		ResultSet rs=st.executeQuery(sql);
		while (rs.next()) {
		 DangNhap dt= new DangNhap();
		 dt.setMaDangNhap(rs.getInt("MaDangNhap"));
		 dt.setEmail(rs.getString("Email"));
		 dt.setMatKhau(rs.getString("MatKhau"));
		 dt.setMaDangNhap(rs.getInt("MaDangNhap"));
		 ds.add(dt);
		}
		return ds;
	}
}
