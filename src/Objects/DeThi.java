package Objects;
import java.sql.Date;
public class DeThi {
	private int MaDeThi;
	private int HocKy;
	private Date ThoiGian;
	private int SoCauHoi;
	private float ThangDiem;
	private boolean IsActive;
	public int getMaDeThi() {
		return MaDeThi;
	}
	public void setMaDeThi(int maDeThi) {
		MaDeThi = maDeThi;
	}
	public int getHocKy() {
		return HocKy;
	}
	public void setHocKy(int hocKy) {
		HocKy = hocKy;
	}
	public Date getThoiGian() {
		return ThoiGian;
	}
	public void setThoiGian(Date thoiGian) {
		ThoiGian = thoiGian;
	}
	public int getSoCauHoi() {
		return SoCauHoi;
	}
	public void setSoCauHoi(int soCauHoi) {
		SoCauHoi = soCauHoi;
	}
	public float getThangDiem() {
		return ThangDiem;
	}
	public void setThangDiem(float thangDiem) {
		ThangDiem = thangDiem;
	}
	public boolean isIsActive() {
		return IsActive;
	}
	public void setIsActive(boolean isActive) {
		IsActive = isActive;
	}
	public DeThi(int maDeThi,int hocKy,Date thoiGian,int soCauHoi,float thangDiem,boolean isActive) {
		super();
		MaDeThi = maDeThi;
		HocKy= hocKy;
		ThoiGian = thoiGian;
		SoCauHoi = soCauHoi;
		ThangDiem = thangDiem;
		IsActive = isActive;
	}
	public DeThi() {
		super();
	}
}
