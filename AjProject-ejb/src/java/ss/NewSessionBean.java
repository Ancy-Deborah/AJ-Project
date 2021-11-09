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
import ee.CoReg;
import ee.PayFee;
import ee.Register;
import ee.TimeTable;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

/**
 *
 * @author Admin
 */
@Stateless
public class NewSessionBean implements NewSessionBeanLocal {

    @PersistenceContext(unitName = "AjProject-ejbPU")
    private EntityManager em;

    @Override
    public void persist(Object object) {
        em.persist(object);
    }

    @Override
    public void addTime(String dept, String scode, String tit, String dat,String s,String t) {
        TimeTable ee = new TimeTable();
        ee.setDept(dept);
        ee.setScode(scode);
        ee.setTitle(tit);
        ee.setDat(dat);
        ee.setSess(s);
        ee.setTim(t);
        persist(ee);
    }

    
    @Override
      public List<AddStud> fetchtno()
    {
        List l6=em.createQuery("SELECT c.deptno FROM AddStud c").getResultList();
        return l6;
    }
    
    
    @Override
    public void add(String deptno, String name, String password, String cpassword) {
        Register ee = new Register();
        ee.setDeptno(deptno);
        ee.setName(name);
        ee.setPassword(password);
        ee.setCpassword(cpassword);
        persist(ee);
    }

    @Override
    public void RegCo(String cname, String sname, String dptno, String dept, String y) {
        CoReg ee = new CoReg();
        ee.setCname(cname);
        ee.setDept(dept);
        ee.setDeptno(dptno);
        ee.setSname(sname);
        ee.setYr(y);
        persist(ee);
    }

    @Override
    public void FeePay(String card, String name, String cno, String y, String cvv) {
        PayFee ee = new PayFee();
        ee.setCard(card);
        ee.setCardno(cno);
        ee.setName(name);
        ee.setCvv(cvv);
        ee.setYr(y);
        persist(ee);
    }

    @Override
    public List<AddTeach> findAllTeachers() {
        TypedQuery<AddTeach> query = em.createQuery("SELECT e FROM AddTeach e", AddTeach.class);
        return query.getResultList();
    }

    @Override
    public AddStud update(String deptno, String name, String dept, String fname, String mname, String bg, String c) {
       
        AddStud ee = em.find(AddStud.class, deptno); 
        
        if (ee != null) {
            ee.setDeptno(deptno);
            ee.setName(name);
            ee.setBgroup(bg);
            ee.setContact(c);
            ee.setFname(fname);
            ee.setMname(mname);
            ee.setDept(dept);
            em.merge(ee);
        }
        return ee;
    }
    
    @Override
   public List<AddMarks> findMarks() {
        TypedQuery<AddMarks> query = em.createQuery("SELECT e FROM AddMarks e", AddMarks.class);
        return query.getResultList();
    }
   
 
    @Override
    public List<TimeTable> findTimeTable() {
        TypedQuery<TimeTable> query = em.createQuery("SELECT e FROM TimeTable e", TimeTable.class);
        return query.getResultList();
    }
   
    @Override
    public List<AddMarks> findMarks(String d) {
        TypedQuery<AddMarks> query = em.createQuery("SELECT e FROM AddMarks e where e.deptno=:dpno", AddMarks.class);
        query.setParameter("dpno", d);
        return query.getResultList();
    }

    @Override
    public List<AddCourse> findCourse() {
        TypedQuery<AddCourse> query = em.createQuery("SELECT e FROM AddCourse e", AddCourse.class);
        return query.getResultList();
    }

    @Override
    public List<AddStud> findAllStudents() {
        TypedQuery<AddStud> query = em.createQuery("SELECT e FROM AddStud e", AddStud.class);
        return query.getResultList();
    }

    @Override
    public void teachAdd(String tid, String name, String dept, String phn, String bg) {
        AddTeach ee = new AddTeach();
        ee.setDept(dept);
        ee.setTname(name);
        ee.setTid(tid);
        ee.setCon(phn);
        ee.setBg(bg);

        persist(ee);
    }

    @Override
    public void studAdd(String deptno, String name, String dept, String fname, String mname, String bg, String c) {
        AddStud ee = new AddStud();
        ee.setDeptno(deptno);
        ee.setName(name);
        ee.setBgroup(bg);
        ee.setContact(c);
        ee.setFname(fname);
        ee.setMname(mname);
        ee.setDept(dept);
        persist(ee);
    }

    @Override
    public void courseAdd(String cname, String cid, String dept, String duration) {
        AddCourse ee = new AddCourse();
        ee.setCname(cname);
        ee.setCid(cid);
        ee.setDept(dept);
        ee.setDuration(duration);
        persist(ee);
    }

    
    @Override
    public void mark(String name, String deptno, String dept, String sub1, String sub2, String sub3, String sub4, String sub5,String avg,String tot) {
        AddMarks ee = new AddMarks();
        ee.setDeptno(deptno);
        ee.setName(name);
        ee.setDept(dept);
        ee.setSub1(sub1);
        ee.setSub2(sub2);
        ee.setSub3(sub3);
        ee.setSub4(sub4);
        ee.setSub5(sub5);
        ee.setTot(tot);
        ee.setAg(avg);
        persist(ee);
    }

    @Override
    public List<Register> login(String deptno) {

        List results = em.createQuery("SELECT a.deptno FROM Register a where a.deptno = :studentid and a.password=:pass")
                .setParameter("studentid", deptno).getResultList();
        return results;
    }

    
    @Override
     public AddStud delete(String id)
    {
        AddStud ee=em.find(AddStud.class,id);
        if(ee!=null)
        {
            em.remove(ee);
        }
        return ee;
    }
     
     
    @Override
       public AddStud search(String id)
    {
        AddStud ee=em.find(AddStud.class,id);
        return ee;
    }
     
    @Override
    public Register findByID(String id) {
        Register l = em.find(Register.class, id);
        return l;
    }

}
