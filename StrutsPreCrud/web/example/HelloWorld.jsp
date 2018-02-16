<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
    <head>
        <title><s:text name="HelloWorld.message"/></title>
    </head>

    <body>
        <h2><s:property value="name"/></h2>
        <h2><s:property value="gender"/></h2>
        <h2><s:property value="country"/></h2>
        <h2><s:property value="hobbies"/></h2>


        <s:form action="HelloWorld">
            <s:label value="Name: "/>
            <s:textfield name="name"/>
            <s:radio label = "Gender" name = "gender" list="{'male','female'}" />
            <s:checkboxlist label = "Hobbies" name = "hobbies"
                            list = "{'sports','tv','shopping'}" />


            <s:select label = "Company Office" name = "country"  list = "{'Mike','John','Smith'}">
            </s:select>
            <s:submit value="Submit"/>
        </s:form>    

    </body>
</html>

