<%-- 
    Document   : login
    Created on : Feb 18, 2018, 11:46:39 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Hello Mr./Mrs. Login Here</h1>
        <s:form action="shabib" method="GET">
            <s:textfield name="username" label="Username:"/>
            <s:textfield name="password" label="Password:"/>
            <s:submit value="Login"/>
        </s:form>
    </body>
</html>
