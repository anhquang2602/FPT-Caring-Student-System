/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author asus
 */
public class BusDAOTest {
    
    BusDAO bus;
    
    public BusDAOTest() {
        bus = new BusDAO();
    }

    @Test
    public void testGetBusStopByNumber() {
        String rs = bus.getBusStopByNumber(107);
        String expected = "211 Kim Mã &&116 A5 Tập thể Giảng Võ – Kim Mã &&31 Nguyễn Chí Thanh &&73 Nguyễn Chí Thanh – Đối diện Khách sạn Bảo Sơn &&89 Nguyễn Chí Thanh – KTX Đại học Luật&&KTX Đại học Giao thông Vận tải – 99 Nguyễn Chí Thanh &&Đại học Lao động & Xã hội – 43 Trần Duy Hưng &&113 Trần Duy Hưng – Bộ KHCN &&Đối diện 220 Trần Duy Hưng (đối diện Big C,&&Cách Ngã 3 Hoàng Minh Giám) &&Tòa nhà Thăng Long Number One – Đại lộ Thăng Long &&Công ty Viễn Thông Viettel (Tòa nhà N1) – Đại lộ Thăng Long &&Qua 100m ngã 3 Đại lộ Thăng Long – Lê Quang Đạo &&Trước ngã 3 Phố Sa Đôi – Đại lộ Thăng Long &&Lối vào THPT Đại Mỗ – Đại lộ Thăng Long &&Qua ngã 3 Làng Miêu Nha – Đại lộ Thăng Long &&Đường vào UBND Phường Tây Mỗ – Đại lộ Thăng Long &&Cổng Thiên Đường Bảo Sơn – Đại lộ Thăng Long &&Trước 50m hầm chui dân sinh số 3 Đại Lộ Thăng Long &&Cầu vượt An Khánh – Đại lộ Thăng Long &&KĐT Nam An Khánh – Đại lộ Thăng Long&&Đê Phương Viên, Song Phương – Đại lộ Thăng Long &&Song Phương, Hoài Đức – Đại lộ Thăng Long &&Xã Vân Côn, Hoài Đức – Đại lộ Thăng Long &&Thôn Quảng Yên, Yên Sơn, Quốc Oai – Đại lộ Thăng Long &&Ngã 3 Chùa Thầy – Quốc Oai – Đại lộ Thăng Long &&Khu đô thị Ngôi nhà mới- Đại lộ Thăng Long &&Thôn Ngô Sài – thị trấn Quốc Oai – Đại lộ Thăng Long &&Thôn Ngọc Than, xã Ngọc Mỹ – Đại lộ Thăng Long &&Thôn Đồng Bụt, xã Ngọc Liệp – Đại lộ Thăng Long &&Trường THCS Ngọc Liệp &&Thôn Liệp Mai, xã Ngọc Liệp – Đại lộ Thăng Long (hướng về trung tâm thành phố) &&Thôn Đồng Kho, xã Đồng Trúc – Đại lộ Thăng Long (hướng về trung tâm thành phố) &&Thôn Khoang Mái, xã Đồng Trúc – Đại lộ Thăng Long &&Cty Cám Trường Thọ – Đại lộ Thăng Long &&Khu CN cao Hòa Lạc – Đại lộ Thăng Long &&Đối diện trường PTTH Hòa Lạc &&Đối Diện Tòa Nhà Viettel Hòa Lạc &&Qua 50m đối diện đường vào trường ĐH FPT, Hòa Lạc &&Quầy thuốc số 15 – Thôn 7 xã Thạch Hòa – QL21 &&Qua 30m đối diện công ty CP dịch vụ bảo vệ KCN Cao Hòa Lạc – QL21 &&Đối diện cửa hàng điện nước Tuấn Bình – thôn 7 xã Thạch Hòa – QL21 &&Đại lý sữa Lan Anh – xã Thạch Hòa &&Công ty CP xây dựng Tiến An – Thôn 6 xã Thạch Hòa &&Trước 30m đường vào thôn Trại Mới xã Tiến Xuân &&Đại lý sữa Ất Thảo – Thôn Nhòn xã Tiến Xuân &&Qua 30m Cty CP An Thinh Group – Thôn Gò Mè xã Yên Bình &&Qua Ngã 4 Yên Bình 70m &&Trước 30 đối diện Xưởng thực hành Trường Cao đẳng công nghiệp kỹ thuật Trần Hưng Đạo &&Qua Cổng A Làng Văn Hóa Du Lịch Các Dân Tộc Việt Nam 30m &&Làng văn hóa các dân tộc Việt Nam – Tuyến 107";
        assertEquals(expected, rs);
    }

    @Test
    public void testGetBusImageByNumber() {
        String rs = bus.getBusImageByNumber(107);
        String expected = "busimage/xe107_1.png";
        assertEquals(expected, rs);
    }

    @Test
    public void testGetTotalBus() {
        int rs = bus.getTotalBus();
        int expected = 5;
        assertEquals(expected, rs);
    }
}
