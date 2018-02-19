<%-- 
    Document   : welcome
    Created on : Feb 18, 2018, 11:47:26 AM
    Author     : user
--%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h2><s:property value="message"/></h2>



    <s:form method="GET" action="registration">
        <s:label value="Name: "/>
        <s:textfield name="name"/>
        <s:submit value="Submit"/>
    </s:form>
</body>
</html>
