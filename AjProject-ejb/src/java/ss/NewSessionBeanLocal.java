/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ss;

import ee.AddCourse;
import ee.AddMarks;
import ee.AddStud;
import ee.AddTeach;
import ee.Register;
import ee.TimeTable;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Admin
 */
@Local
public interface NewSessionBeanLocal {

    public void persist(Object object);

    public void add(String deptno, String name, String password, String cpassword);

    

    public Register findByID(String id);

    public List<Register> login(String deptno);

    public AddStud search(String id);

    public AddStud delete(String id);

    public void mark(String name, String deptno, String dept, String sub1, String sub2, String sub3, String sub4, String sub5, String avg, String tot);

    public void studAdd(String deptno, String name, String dept, String fname, String mname, String bg, String c);

    public void teachAdd(String tid, String name, String dept, String phn, String bg);

    public List<AddStud> findAllStudents();

    public List<TimeTable> findTimeTable();

    public List<AddMarks> findMarks(String d);

    public List<AddCourse> findCourse();

    public List<AddMarks> findMarks();

    public AddStud update(String deptno, String name, String dept, String fname, String mname, String bg, String c);

    public List<AddTeach> findAllTeachers();

    public void FeePay(String card, String name, String cno, String y, String cvv);

    public void RegCo(String cname, String sname, String dptno, String dept, String y);

    public List<AddStud> fetchtno();

    public void addTime(String dept, String scode, String tit, String dat, String s, String t);

    public void courseAdd(String cname, String cid, String dept, String duration);


   
    
}
