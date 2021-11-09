<%-- 
    Document   : StudAdd
    Created on : Oct 5, 2019, 5:19:50 PM
    Author     : Admin
--%>

<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="ss.NewSessionBeanLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <jsp:include page="home.jsp" />
    <center>
        <b>
        <form>
            <br><br><br>
            <table>
                
                <tr>
                    ADD STUDENT
                </tr>
                 <tr><td height="50" weidth="10%">DEPARTMENT NO</td><td><input type="text" name="t1"><br></td> </tr>
                <tr><td height="50" weidth="10%">STUDENT NAME</td><td><input type="text" name="t2"><br></td> </tr>
                <tr><td height="50" weidth="10%">BLOOD GROUP</td><td><input type="text" name="t3"><br></td> </tr>
                <tr><td height="50" weidth="10%">FATHER NAME</td><td><input type="text" name="t4"><br></td></tr>
                <tr><td height="50" weidth="10%">MOTHER NAME</td><td><input type="text" name="t5"><br></td> </tr> 
               <tr><td height="50" weidth="10%">CONTACT NO</td><td><input type="text" name="t6"><br></td> </tr>
                <tr><td height="50" weidth="10%">DEPARTMENT </td><td><select name="t7">
                            <option>Please Select</option>
                            <option>BCA</option>
                            <option>BBA</option>
                            <option>Bcom</option>
                            <option>VisCom</option>
                            <option>MSc IT</option>
                        </select><br></td>
                    
                </tr>
                
            </table>
            <input type="submit" name="s1" value="submit">
          
            <%
                NewSessionBeanLocal newSessionBean = null;
                Context c = new InitialContext();
                newSessionBean = (NewSessionBeanLocal) c.lookup("java:global/AjProject/AjProject-ejb/NewSessionBean!ss.NewSessionBeanLocal");
                
                
                String sid = request.getParameter("t1");
                String sname = request.getParameter("t2");
                String bg = request.getParameter("t3");
                String fname = request.getParameter("t4");
                String mname = request.getParameter("t5");
                String dept = request.getParameter("t7");
                String contact = request.getParameter("t6");
                
                
              
                if (request.getParameter("s1") != null) {
                    if(sid.equals("") ){
                        out.print("\nEnter Student id");
                       
                    }
                    if(sname.equals("")){
                        out.print("\nEnter Student name");
                       
                    }
                    if(bg.equals("")){
                        out.print("\nEnter Blood group");
                       
                    }
                    if(fname.equals("")){
                        out.print("\nEnter Father name");
                       
                    }
                    if(mname.equals("")){
                        out.print("\nEnter Mother name");
                       
                    }
                    if(dept.equals("")){
                        out.print("\nEnter department ");
                       
                    }
                    if(contact.equals("")| contact.length()<10 | contact.length()>10){
                        out.print("\nEnter valid a phone number ");
                       
                    }
                    
                    else{
                        
                    newSessionBean.studAdd(sid, sname, dept,fname,mname,bg,contact);
                    out.println("\n");
                    out.println("\nStudent details added successfully");
                    }

                }
            %>


        </form>
            </b>
    </center>
    </body>
</html>
