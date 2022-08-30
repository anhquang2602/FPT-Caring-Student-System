/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package unittest;

import dao.AccountDAO;
import dao.BusDAO;
import dao.ClubDAO;
import dao.DepartmentDAO;
import dao.HostelDAO;
import dao.RestaurantDAO;
import dao.SellerDAO;
import model.Account;

/**
 *
 * @author nguye
 */
public class FCS_UnitTest {

    DepartmentDAO d;
    HostelDAO h;
    AccountDAO adb;
    BusDAO bus;
    RestaurantDAO r;
    ClubDAO c;
    SellerDAO s;

    public FCS_UnitTest() {
        d = new DepartmentDAO();
        h = new HostelDAO();
        adb = new AccountDAO();
        bus = new BusDAO();
        r = new RestaurantDAO();
        c = new ClubDAO();
        s = new SellerDAO();
    }

    // test DepartmentDAO   
    @Test
    public void testGetDepartmentDetailbyID() {

        String depEmail = "dichvusinhvien@fe.edu.vn";
        assertEquals(depEmail, d.getDepartmentDetailbyID(4).getEmail());

    }

    @Test
    public void testGetTotalDepartment() {
        int total = d.getTotalDepartment();
        int expected = 7;
        assertEquals(expected, total);

    }
    //test HostelDAO

    @Test
    public void testGetHostelInfo() {
        String hostelName = h.getHostelInfo(16).getHostelName();
        String expected = "ngoccau123";
        assertEquals(expected, hostelName);
    }

    @Test
    public void testListHostelbySeller() {
        int size = h.listHostelbySeller(13).size();
        int expected = 7;
        assertEquals(expected, size);
    }

    @Test
    public void testDeleteHostel() {
        h.deleteHostel(12);
    }

    // test AccountDAO
    @Test
    public void testExsitedAccount() {
        boolean rs = adb.exsitedAccount("longnguyenhuuhoang@gmail.com");
        boolean expected = true;
        assertEquals(expected, rs);
    }

    @Test
    public void testGetPasswordByUsername() {
        String expected = "bacninh1234";
        String rs = adb.getPasswordByUsername("longnguyenhuuhoang@gmail.com");
        assertEquals(expected, rs);
    }

    @Test
    public void testCheckLogin() {
        Account accountRs = new Account();
        int rs = 0;
        int expected = 1;
        accountRs = adb.checkLogin("longnguyenhuuhoang@gmail.com", "bacninh1234");
        if (accountRs.getUsername() == "longnguyenhuuhoang@gmail.com" && accountRs.getPassword() == "bacninh1234" && accountRs.getRoleId() == 2 && accountRs.isStatus() == true) {
            rs = 1;
        }
        assertEquals(expected, rs);
    }

    //test BusDAO
    @Test
    public void testGetBusStopByNumber() {
        String rs = bus.getBusStopByNumber(107);
        String expected = "211 Kim Mã &&116 A5 Tập thể Giảng Võ – Kim Mã &&31 Nguyễn Chí Thanh &&73 Nguyễn Chí Thanh – Đối diện Khách sạn Bảo Sơn &&89 Nguyễn Chí Thanh – KTX Đại học Luật&&KTX Đại học Giao thông Vận tải – 99 Nguyễn Chí Thanh &&Đại học Lao động & Xã hội – 43 Trần Duy Hưng &&113 Trần Duy Hưng – Bộ KHCN &&Đối diện 220 Trần Duy Hưng (đối diện Big C,&&Cách Ngã 3 Hoàng Minh Giám) &&Tòa nhà Thăng Long Number One – Đại lộ Thăng Long &&Công ty Viễn Thông Viettel (Tòa nhà N1) – Đại lộ Thăng Long &&Qua 100m ngã 3 Đại lộ Thăng Long – Lê Quang Đạo &&Trước ngã 3 Phố Sa Đôi – Đại lộ Thăng Long &&Lối vào THPT Đại Mỗ – Đại lộ Thăng Long &&Qua ngã 3 Làng Miêu Nha – Đại lộ Thăng Long &&Đường vào UBND Phường Tây Mỗ – Đại lộ Thăng Long &&Cổng Thiên Đường Bảo Sơn – Đại lộ Thăng Long &&Trước 50m hầm chui dân sinh số 3 Đại Lộ Thăng Long &&Cầu vượt An Khánh – Đại lộ Thăng Long &&KĐT Nam An Khánh – Đại lộ Thăng Long&&Đê Phương Viên, Song Phương – Đại lộ Thăng Long &&Song Phương, Hoài Đức – Đại lộ Thăng Long &&Xã Vân Côn, Hoài Đức – Đại lộ Thăng Long &&Thôn Quảng Yên, Yên Sơn, Quốc Oai – Đại lộ Thăng Long &&Ngã 3 Chùa Thầy – Quốc Oai – Đại lộ Thăng Long &&Khu đô thị Ngôi nhà mới- Đại lộ Thăng Long &&Thôn Ngô Sài – thị trấn Quốc Oai – Đại lộ Thăng Long &&Thôn Ngọc Than, xã Ngọc Mỹ – Đại lộ Thăng Long &&Thôn Đồng Bụt, xã Ngọc Liệp – Đại lộ Thăng Long &&Trường THCS Ngọc Liệp &&Thôn Liệp Mai, xã Ngọc Liệp – Đại lộ Thăng Long (hướng về trung tâm thành phố) &&Thôn Đồng Kho, xã Đồng Trúc – Đại lộ Thăng Long (hướng về trung tâm thành phố) &&Thôn Khoang Mái, xã Đồng Trúc – Đại lộ Thăng Long &&Cty Cám Trường Thọ – Đại lộ Thăng Long &&Khu CN cao Hòa Lạc – Đại lộ Thăng Long &&Đối diện trường PTTH Hòa Lạc &&Đối Diện Tòa Nhà Viettel Hòa Lạc &&Qua 50m đối diện đường vào trường ĐH FPT, Hòa Lạc &&Quầy thuốc số 15 – Thôn 7 xã Thạch Hòa – QL21 &&Qua 30m đối diện công ty CP dịch vụ bảo vệ KCN Cao Hòa Lạc – QL21 &&Đối diện cửa hàng điện nước Tuấn Bình – thôn 7 xã Thạch Hòa – QL21 &&Đại lý sữa Lan Anh – xã Thạch Hòa &&Công ty CP xây dựng Tiến An – Thôn 6 xã Thạch Hòa &&Trước 30m đường vào thôn Trại Mới xã Tiến Xuân &&Đại lý sữa Ất Thảo – Thôn Nhòn xã Tiến Xuân &&Qua 30m Cty CP An Thinh Group – Thôn Gò Mè xã Yên Bình &&Qua Ngã 4 Yên Bình 70m &&Trước 30 đối diện Xưởng thực hành Trường Cao đẳng công nghiệp kỹ thuật Trần Hưng Đạo &&Qua Cổng A Làng Văn Hóa Du Lịch Các Dân Tộc Việt Nam 30m &&Làng văn hóa các dân tộc Việt Nam – Tuyến 107";
        assertEquals(expected, rs);
    }

    @Test
    public void testGetTotalBus() {
        int rs = bus.getTotalBus();
        int expected = 5;
        assertEquals(expected, rs);
    }

    //testRestaurantDAO
    @Test
    public void testGetRestaurantNameByResId() {
        String name = r.getRestaurantNameByResId(2);
        String expected = "Xiên Bẩn Food And Drink";
        assertEquals(expected, name);

    }

    @Test
    public void testListFoodByRestaurant() {
        int size = r.listFoodByRestaurant(18).size();
        int expected = 6;
        assertEquals(expected, size);
    }

    @Test
    public void testCreateFoodImg() {
        r.createFoodImg(36, "abc.jpg");
    }

    //test ClubDAO
    @Test
    public void testGetListClubsByCategories() {
        int size = c.getListClubsByCategories(1).size();
        int expected = 1;
        assertEquals(expected, size);

    }

    @Test
    public void testGetClubByID() {
        String name = c.getClubByID(3).getClubName();
        String expected = "FPTU - Melody Club";
        assertEquals(expected, name);
    }

    @Test
    public void testDeleteEvent() {
        c.deleteEvent(2);
    }

    //testSellerDAO
    @Test
    public void testInsertNewSeller() {
        s.insertNewSeller("nguyenngoccau@gmail.com");
    }

    @Test
    public void testGetAvatarByUsername() {
        String avt = s.getAvatarByUsername("nguyenngoccau2004@gmail.com");
        String expected = "avatarImages/nguyenngoccau2004Avatar.jpg";
        assertEquals(expected, avt);
    }

    @Test
    public void testUpdateStatus() {
        boolean rs=false;
        boolean expected = true;
        boolean update= s.updateStatus("nguyenngoccau2004@gmail.com", 1);
        String username =s.getSellertBySellerID(13).getEmail();
        if(username.equals("nguyenngoccau2004@gmail.com")){
        rs=true;
        }
        assertEquals(expected, rs);
    }
        
   
    @Test
    public void testGetSellerID() {
        int id = Integer.parseInt(s.getSellerID("nguyenngoccau2004@gmail.com"));
        int expected = 13;
        assertEquals(expected, id);
    }

}
