<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
    <head>
        <title>Validation</title>
    </head>

    <body>
        <s:form action="register">  
            <s:textfield name="name" label="Name"></s:textfield>  
            <s:password name="password" label="Password"></s:password>  
            <s:submit value="Register"></s:submit>  
        </s:form>  
    </body>
</html>

