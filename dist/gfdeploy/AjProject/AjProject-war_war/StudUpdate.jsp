<%-- 
    Document   : StudUpdate
    Created on : Oct 7, 2019, 9:58:52 AM
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
      <jsp:include page="shome.jsp" />
         
       <center>
        <b>
        <form>
            <br><br><br>
            <table>
                
                <tr>
                    UPDATE STUDENT
                </tr>
                 <tr><td height="50" weidth="10%">DEPARTMENT NO</td><td><input type="text" name="t1" required><br></td> </tr>
                <tr><td height="50" weidth="10%">STUDENT NAME</td><td><input type="text" name="t2" required><br></td> </tr>
                <tr><td height="50" weidth="10%">BLOOD GROUP</td><td><input type="text" name="t3"required><br></td> </tr>
                <tr><td height="50" weidth="10%">FATHER NAME</td><td><input type="text" name="t4"required><br></td></tr>
                <tr><td height="50" weidth="10%">MOTHER NAME</td><td><input type="text" name="t5" required><br></td> </tr> 
               <tr><td height="50" weidth="10%">CONTACT NO</td><td><input type="text" name="t6" required><br></td> </tr>
                <tr><td height="50" weidth="10%">DEPARTMENT </td><td><select name="t7"required>
                            <option value=""></option>
                            <option>BCA</option>
                            <option>BBA</option>
                            <option>Bcom</option>
                            <option>VisCom</option>
                            <option>MSc IT</option>
                        </select><br></td>
                    
                </tr>
                
            </table>
            <input type="submit" name="s1" value="Update">
          
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
                
                      newSessionBean.update(sid, sname, dept, fname, mname,bg,contact);
                    out.println("Updated successfully !!");
     
            }
            %>


        </form>
            </b>
   
    </body>
</html>
