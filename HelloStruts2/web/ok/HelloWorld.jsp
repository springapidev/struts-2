<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
    <head>
        <title><s:property value="message"/></title>
    </head>

    <body>
        <h2><s:property value="message"/></h2>

                      
                
                <s:form method="POST" action="Bd">
                    <s:textfield name="userName"/>
                    <s:submit value="Submit"/>
                </s:form>
    </body>
</html>

