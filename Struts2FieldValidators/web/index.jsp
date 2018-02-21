<%@ taglib  uri="/struts-tags" prefix="s"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <h1>Registration Form.............</h1>

        <s:form action="register" validate="true" method="POST">
            <s:textfield name="name" label="Username"></s:textfield>
            <s:textfield name="email" label="Email ID"></s:textfield>
            <s:password name="password" label="Password"></s:password>
            <s:submit validate="true" value="Register"/>
        </s:form>

</body>
</html>




