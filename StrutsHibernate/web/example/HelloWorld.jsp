<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
    <head>
        <title><s:text name="HelloWorld.message"/></title>
    </head>

    <body>

        <s:property value="message"/>
        <s:form action="HelloWorld" method="POST">
            <s:label value="Name"/>
            <s:textfield name="name"/>
            <s:submit value="Submit"/>
        </s:form>


        <s:if test="testList.size() > 0">
            <div class="content">
                <table class="userTable" cellpadding="5px">
                    <tr class="even">
                        <th>ID</th>
                        <th>Name</th>
                    </tr>
                    <s:iterator value="testList" status="ts">
                        <tr class="<s:if test="#ts.odd == true ">odd</s:if><s:else>even</s:else>">
                            <td><s:property value="id" /></td>
                            <td><s:property value="name" /></td>
                        </tr>
                    </s:iterator>
                </table>
            </div>
        </s:if>
    </body>
</html>

