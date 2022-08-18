/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Hostel;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author nguye
 */
public class HostelDAOTest {
    HostelDAO h;
    public HostelDAOTest() {
        h = new HostelDAO();
    }

    @Test
    public void testAddHostel() {
        h.addHostel(new Hostel("Cau", 1, true, 1, 1, 1,"TB", 2, 2, "deptrai"));
    }

    @Test
    public void testListAllHostel() {
    }

    @Test
    public void testListAllHostelPagging() {
    }

    @Test
    public void testFilterHostel() {
    }

    @Test
    public void testFilterHostelPagging() {
    }

    @Test
    public void testFilterHostelText() {
    }

    @Test
    public void testFilterHostelTextPagging() {
    }

    @Test
    public void testListHostelbySeller() {
    }

    @Test
    public void testGetHostelInfo() {
    }

    @Test
    public void testUpdateHostel() {
    }

    @Test
    public void testDeleteHostelImage() {
    }

    @Test
    public void testDeleteReportbyHostel() {
    }

    @Test
    public void testDeleteHostel() {
    }

    @Test
    public void testGetlHostelByNamePagging() {
    }

    @Test
    public void testGetlHostelByName() {
    }

    @Test
    public void testGetTotalPage() {
    }

    @Test
    public void testGetTotalPageByFilter() {
    }

    @Test
    public void testGetTotalPageTextByFilter() {
    }

    @Test
    public void testGetMaxCost() {
    }

    @Test
    public void testPagingHostels() {
    }

    @Test
    public void testGetTotalHostels() {
    }

    @Test
    public void testGetSellerIdByHostelId() {
    }

    @Test
    public void testGetHostelNameByHostelId() {
    }

    @Test
    public void testGetSellerEmailByHostelId() {
    }

    @Test
    public void testAddHostelID() {
    }

    @Test
    public void testAddImage() {
    }

    @Test
    public void testAddEachImage() {
    }

    @Test
    public void testDeleteImage() {
    }

    @Test
    public void testGetNewestHostelID() {
    }

    @Test
    public void testListStar() {
    }

    @Test
    public void testUpdateStarAVG() {
    }

    @Test
    public void testMain() {
    }
    
}
