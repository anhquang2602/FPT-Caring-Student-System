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
 * @author nguye
 */
public class FCS_UnitTest {
    DepartmentDAO d;
    HostelDAO h;
    AccountDAO a;
    
    public FCS_UnitTest() {
         d = new DepartmentDAO();
         h = new HostelDAO();
        
    }

    @Test
    public void testListDep() {
    }

    @Test
    public void testGetDepartmentDetailbyID() {

        String depEmail = "dichvusinhvien@fe.edu.vn";
        assertEquals(depEmail, d.getDepartmentDetailbyID(4).getEmail());
        
    }

    @Test
    public void testPagingDepartment() {
        
    }

    @Test
    public void testGetTotalDepartment() {
        int total = d.getTotalDepartment();
        int expected = 6;
        assertEquals(expected, total);
    
    }
    
 

    @Test
    public void testPagingDepartmentByText() {
    }

    @Test
    public void testGetAllDepartmentByText() {
    }

    @Test
    public void testGetTotalDepartmentByText() {
    }

    @Test
    public void testMain() {
    }
    
}
