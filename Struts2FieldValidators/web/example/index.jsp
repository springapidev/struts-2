<%@ taglib uri="/struts-tags" prefix="s" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>  
        <STYLE type="text/css">  
            .errorMessage{color:red;}  
        </STYLE>  
    </head>  
    <body>  

        <s:form action="HelloWorld">  
            <s:textfield name="username" label="Username"></s:textfield>  
            <s:password name="userpass" label="Password"></s:password>  
            <s:submit value="register"></s:submit>  
        </s:form>  

    </body>  
</html>  