<%-- 
    Document   : hhome
    Created on : Oct 7, 2019, 1:12:25 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            String s = (String) session.getAttribute("user");

            if (s.equals("admin")) {%>
        <jsp:include page="home.jsp"></jsp:include>
        <%} else {%>
        <jsp:include page="shome.jsp"></jsp:include>

        <%}%>
           
    </head>
    <body>
 
  <br>
    <center>
        <img src="bgg.gif" alt="Italian Trulli" width="90%" height="300"><br>  

    <table border="0" cellpadding="1" cellspacing="5" style="color: rgb(70, 70, 70); font-family: Verdana, Helvetica, sans-serif; font-size: 10px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" width="100%">
        <tr id="ctl00_ContentPlaceHolder1_PG">
            <td valign="top">
                <p style="margin-top: 0px; text-align: justify;">
                    <span class="listtext" style="font-family: Verdana, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 9pt; letter-spacing: normal; text-transform: none; word-spacing: normal; text-align: justify;">
                        <br class="Apple-interchange-newline" />
                        You&nbsp; can use this Student Web Page to register Independent Electives<b>(PI)</b><span>&nbsp;</span>and Postgraduate Electives&nbsp;<b>(PE)</b><span>&nbsp;</span>whenever the registrations are open.</span></p>
                <p style="margin-top: 0px; text-align: justify;">
                    <span class="listtext" style="font-family: Verdana, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 9pt; letter-spacing: normal; text-transform: none; word-spacing: normal; text-align: justify;">You can also view your<span>&nbsp;</span><b>Attendance</b><span>&nbsp;</span>and<span>&nbsp;</span><b>Exam Results</b>.</span></p>
                <p class="Parahead" style="margin-top: 0px; text-align: left; font-family: Verdana, Helvetica, sans-serif; color: rgb(0, 102, 153); font-size: 8pt; font-weight: bold; letter-spacing: normal; text-transform: none; word-spacing: normal;">
                    Independent Electives (PI)</p>
                <ul class="listtext" style="margin-top: 0px; text-align: justify; font-family: Verdana, Helvetica, sans-serif; color: rgb(0, 0, 0); font-size: 9pt; letter-spacing: normal; text-transform: none; word-spacing: normal;">
                    <li style="list-style-type: square;">Students may opt to do an &quot;Independent Elective Course&quot;<b><span>&nbsp;</span>where the student will study the entire course on her own. &quot;</b></li>
                    <li style="list-style-type: square;">Students can take a maximum of<span>&nbsp;</span><b>one</b><span>&nbsp;</span>Independent Elective Course per semester from the parent department or from other departments.</li>
                    <li style="list-style-type: square;">There will be a three hour End Semester Examination for all Independent Elective Courses. The marks and extra credits for these courses will be included in the mark sheet. However these marks will not be considered for the final classification.</li>
                    <li style="list-style-type: square;">A student who fails a PI course cannot re-register for the same course and is not eligible for course completion.</li>
                </ul>
                <p>
                    &nbsp;</p>
            </td>
        </tr>
    </table>
    </center>
</body>
</html>
