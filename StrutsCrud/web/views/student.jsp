<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
    <head>
        <title>Struts 2 Crud</title>
        <s:head />
        <style type="text/css">
            @import url(style.css);
        </style>
    </head>

    <body>
        <s:form action="saveStudent" method="POST">

            <s:textfield name="name" label="Student Name" />
            <s:radio name="gender" label="Gender" list="{'Male','Female'}" />
            <s:select name="country" list="{'BD','USA','UK'}" headerKey=""
                      headerValue="Select" label="Select a country" />
            <s:date name="dob" format="yyyy-MM-dd"/>
            <s:submit value="Submit"/>
        </s:form>



        <s:if test="students.size() > 0">
            <div class="content">
                <table class="userTable" cellpadding="5px">
                    <tr class="even">
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Country</th>
                        <th>Date Of Birth</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    <s:iterator value="students" status="studentStatus">
                        <tr class="<s:if test="#studentStatus.odd == true ">odd</s:if><s:else>even</s:else>">
                            <td><s:property value="name" /></td>
                            <td><s:property value="gender" /></td>
                             <td><s:property value="country" /></td>
                            <td><s:url id="editURL" action="updateStudent">
                                    <s:param name="id" value="%{id}"></s:param>
                                </s:url> <s:a href="%{editURL}">Edit</s:a></td>
                            <td><s:url id="deleteURL" action="deleteStudent">
                                    <s:param name="id" value="%{id}"></s:param>
                                </s:url> <s:a href="%{deleteURL}">Delete</s:a></td>
                            </tr>
                    </s:iterator>
                </table>
            </div>
        </s:if>
    </body>
</html>

