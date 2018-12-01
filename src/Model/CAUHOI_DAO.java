package Model;
import java.sql.*;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Objects.CauHoi;
public class CAUHOI_DAO {
	private Connection conn;
	public CAUHOI_DAO(String username,String password)throws Exception {
		ConnectDB database = new ConnectDB();
		conn=database.Connect(username,password);
	}
	public void themCauHoi( int MaCauHoi, String NoiDungCauHoi, int MaMucDo, String DapAn_A,String DapAn_B,String DapAn_C,String DapAn_D,String DapAnDung) throws SQLException {
		String sql = "{call dbo.ThemCauHoi(?,?,?,?,?,?,?,?)}";
		CallableStatement cstm = conn.prepareCall(sql);
		cstm.setInt(1, MaCauHoi);
		cstm.setString(2, NoiDungCauHoi);
		cstm.setInt(3, MaMucDo);
		cstm.setString(4, DapAn_A);
		cstm.setString(5,DapAn_B);
		cstm.setString(6,DapAn_C);
		cstm.setString(7,DapAn_D);
		cstm.setString(8,DapAnDung);
		cstm.executeUpdate();
	}
	public void XoaCauHoi( int MaCauHoi) throws SQLException {
		String sql = "{call dbo.XoaCauHoi(?)}";
		CallableStatement cstm = conn.prepareCall(sql);
		cstm.setInt(1, MaCauHoi);
		cstm.executeUpdate();
	}
	public void suaCauHoi( int MaCauHoi, String NoiDungCauHoi, String MaMucDo, String DapAn_A,String DapAn_B,String DapAn_C,String DapAn_D,String DapAnDung) throws SQLException {
		String sql = "{call dbo.SuaCauHoi(?,?,?,?,?,?,?)}"; 
		CallableStatement cstm = conn.prepareCall(sql);
		cstm.setInt(1, MaCauHoi);
		cstm.setString(2, NoiDungCauHoi);
		cstm.setString(3, MaMucDo);
		cstm.setString(4, DapAn_A);
		cstm.setString(5,DapAn_B);
		cstm.setString(6,DapAn_C);
		cstm.setString(7,DapAn_D);
		cstm.setString(8,DapAnDung);
		cstm.executeUpdate();
	}
	public List<CauHoi> xemDSCauHoi() throws SQLException {
		List<CauHoi> ds = new ArrayList<CauHoi>();
		Statement st= conn.createStatement();
		String sql = "select * from cauhoi";
		ResultSet rs=st.executeQuery(sql);
		while (rs.next()) {
		 CauHoi ch= new CauHoi();
		 ch.setMaCauHoi(rs.getInt("MaCauHoi"));
		 ch.setNoiDungCauHoi(rs.getString("NoiDungCauHoi"));
		 ch.setMaMucDo(rs.getInt("MaMucDo"));
		 ch.setDapAn_A(rs.getString("DapAn_A"));
		 ch.setDapAn_B(rs.getString("DapAn_B"));
		 ch.setDapAn_C(rs.getString("DapAn_C"));
		 ch.setDapAn_D(rs.getString("DapAn_D"));
		 ch.setDapAnDung(rs.getString("DapAnDung"));
		 ds.add(ch);
		}
		return ds;
	}
}
