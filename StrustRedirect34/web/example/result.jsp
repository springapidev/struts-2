<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>
    <h2>
        Struts2 redirectaction result example <br>
        <hr>

        Message :  <s:property value="message"  default="Message Not Set"/>
        <br>
        Id : <s:property value="#request.id" default="Id Not Set"/><br>
        Name : <s:property value="#request.name" default="Name Not Set"/><br>
        City : <s:property value="#request.city" default="City Not Set"/><br>
        Department : <s:property value="#request.dept" default="Department Not Set"/><br>

    </h2>
    <hr>
   
</body>
</html>