<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login example</title>
    </head>
    <body>
        <s:form action="login" method="GET">
            <s:textfield label="User Name"  name="name" /><br>
            <s:textfield label="Password" name="pass" /><br>
            <s:submit label="submit">

            </s:submit>
        </s:form>
    </body>
</html>