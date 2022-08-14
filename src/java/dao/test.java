/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.Hostel;

/**
 *
 * @author win
 */
public class test {
    public static void main(String[] args) {
        HostelDAO h = new HostelDAO();
        ArrayList<Hostel> hostels = h.filterHostelTextPagging("hồng", 0, 0, 0,1);
        for (Hostel hostel : hostels) {
            System.out.println(hostel.getImg1());
        }
    }
}
