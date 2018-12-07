package Objects;

public class KetQua {
	private int MaTK;
	private int MaDeThi;
	private float Diem;
	public int getMaTK() {
		return MaTK;
	}
	public void setMaTK(int maTK) {
		MaTK = maTK;
	}
	public int getMaDeThi() {
		return MaDeThi;
	}
	public void setMaDeThi(int maDeThi) {
		MaDeThi = maDeThi;
	}
	public float getDiem() {
		return Diem;
	}
	public void setDiem(float diem) {
		Diem = diem;
	}
	public KetQua(int maTK, int maDeThi, float diem) {
		super();
		MaTK = maTK;
		MaDeThi = maDeThi;
		Diem = diem;
	}
	public KetQua() {
	}
	
}
