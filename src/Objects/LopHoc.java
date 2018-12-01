package Objects;

public class LopHoc {
	private int MaLopHoc;
	private int MaDeThi;
	private int HocKy;
	public int getMaDeThi() {
		return MaDeThi;
	}
	public void setMaDeThi(int maDeThi) {
		MaDeThi = maDeThi;
	}
	public int getMaLopHoc() {
		return MaLopHoc;
	}
	public void setMaLopHoc(int maLopHoc) {
		MaLopHoc = maLopHoc;
	}
	public int getHocKy() {
		return HocKy;
	}
	public void setMaCauHoi(int hocKy) {
		HocKy = hocKy;
	}
	public LopHoc(int maLopHoc,int maDeThi,int hocKy)
	{
		super();
		MaLopHoc = maLopHoc;
		MaDeThi=maDeThi;
		HocKy=hocKy;
	}
	public LopHoc()
	{
		super();
	}
}
