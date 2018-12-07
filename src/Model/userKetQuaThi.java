package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Objects.KetQua;

public class userKetQuaThi {
	private Connection conn;
	public userKetQuaThi(String username,String password)throws Exception {
		ConnectDB database = new ConnectDB();
		conn=database.Connect(username,password);
	}
	public void themKetQuaThi(int maDeThi, int maTK, float diem) throws SQLException {
		String sql=" insert into ketquakiemtra (MaKetQua,MaTK,MaDeThi,Diem)\r\n" + 
				"    select(select COALESCE((max(MaKetQua)+1),1) AS LONNHAT  from ketquakiemtra),"+maTK+","+maDeThi+","+diem;
		Statement stm = conn.createStatement();
		stm.executeUpdate(sql);
	}
	public List<KetQua> layKQTheoThiSinh(int maTK) throws SQLException{
		List<KetQua> ds= new ArrayList<>();
		String sql=" select MaTK,MaDeThi, Diem from ketquakiemtra where MaTK ="+maTK+" order by MaKetQua DESC";
		Statement stm = conn.createStatement();
		ResultSet rs=stm.executeQuery(sql);
		while (rs.next()) {
			KetQua kq = new KetQua();
			kq.setMaTK(maTK);
			kq.setDiem(rs.getFloat("Diem"));
			kq.setMaDeThi(rs.getInt("MaDeThi"));
			ds.add(kq);
		}
		return ds;
	}
	public userKetQuaThi() {
		super();
	}
	
}
