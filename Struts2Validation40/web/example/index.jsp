<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
    <head>
        <title><s:text name="HelloWorld.message"/></title>
    </head>

    <body>
        <s:form action="register">  
            <s:textfield name="name" label="Name"></s:textfield>  
            <s:password name="password" label="Password"></s:password>  
            <s:submit value="register"></s:submit>  
        </s:form>  
    </body>
</html>

