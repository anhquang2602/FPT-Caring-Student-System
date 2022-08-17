/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Account;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author longn
 */
public class AccountDAOTest {

    AccountDAO adb;

    public AccountDAOTest() {
        adb = new AccountDAO();
    }

    @Test
    public void testGetAccount() {
        Account accountRs = new Account();
        int rs = 0;
        int expected = 1;
        accountRs = adb.getAccount("longnguyenhuuhoang@gmail.com", "bacninh1234");
        if (accountRs.getUsername() == "longnguyenhuuhoang@gmail.com" && accountRs.getPassword() == "bacninh1234" && accountRs.getRoleId() == 2 && accountRs.isStatus() == true) {
            rs = 1;
        }
        assertEquals(expected, rs);
    }

    @Test
    public void testExsitedAccount() {
        boolean rs=adb.exsitedAccount("longnguyenhuuhoang@gmail.com");
        boolean expected = true;
        assertEquals(expected, rs);
    }

    @Test
    public void testUpdatePassword() {
        boolean rs=false;
        boolean expected = true;
        boolean update=adb.UpdatePassword("longnguyenhuuhoang@gmail.com", "bacninh1234");
        String pass=adb.getPasswordByUsername("longnguyenhuuhoang@gmail.com");
        if(pass.equals("bacninh1234")){
        rs=true;
        }
        assertEquals(expected, rs);
    }

    @Test
    public void testInsertNewAccount() {       
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

    @Test
    public void testGetPasswordByUsername() {
        String expected="bacninh1234";
        String rs=adb.getPasswordByUsername("longnguyenhuuhoang@gmail.com");
        assertEquals(expected, rs);
    }

}
