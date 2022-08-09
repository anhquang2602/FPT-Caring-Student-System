/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;


/**
 *
 * @author nguye
 */
public class StarVoting {

    private int id;
    private int studentNo;
    private int hostelID;
    private Date date;
    private String message;
    private int restaurantID;
    private int starvoting;

    public StarVoting() {
    }

    public StarVoting( int studentNo, int hostelID, int starvoting) {
        
        this.studentNo = studentNo;
        this.hostelID = hostelID;
        this.starvoting = starvoting;
    }

    public StarVoting(int id, int studentNo, int hostelID, int starvoting) {
        this.id = id;
        this.studentNo = studentNo;
        this.hostelID = hostelID;
        this.starvoting = starvoting;
    }

    public StarVoting(int studentNo, int hostelID, Date date, String message, int starvoting) {
        this.studentNo = studentNo;
        this.hostelID = hostelID;
        this.date = date;
        this.message = message;
        this.starvoting = starvoting;
    }
    

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getHostelID() {
        return hostelID;
    }

    public void setHostelID(int hostelID) {
        this.hostelID = hostelID;
    }

    public int getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(int studentNo) {
        this.studentNo = studentNo;
    }

    public int getRestaurantID() {
        return restaurantID;
    }

    public void setRestaurantID(int restaurantID) {
        this.restaurantID = restaurantID;
    }

    public int getStarvoting() {
        return starvoting;
    }

    public void setStarvoting(int starvoting) {
        this.starvoting = starvoting;
    }
    
    
}
