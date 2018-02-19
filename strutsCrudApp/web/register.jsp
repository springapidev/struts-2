<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Registration Page</title>
        <s:head />
        <style type="text/css">
            @import url(bootstrap.css);
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12" >
                    <h1>Struts 2 Crud Operation</h1>
                </div>
            </div>

            <div class="row">
                <s:form action="saveOrUpdateUser">
                    <s:push value="user">
                        <s:hidden name="id" />
                        <s:textfield name="name" label="User Name" />
                        <s:radio name="gender" label="Gender" list="{'Male','Female'}" />
                        <s:select name="country" list="{'BD','USA','UK'}" headerKey=""
                                  headerValue="Select" label="Select a country" />
                        <s:textarea name="aboutYou" label="About You" />
                        <s:checkbox name="mailingList"
                                    label="Would you like to join our mailing list?" />
                        <s:submit />
                    </s:push>
                </s:form>
            </div>
            <div class="row">
                <div class="col-md-12" >
                    <h1>List Of Students</h1>
                </div>
            </div>



            <s:if test="userList.size() > 0">
                <div class="row">
                    <table class="table table-responsive" cellpadding="5px">
                        <tr class="text-info">
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Country</th>
                            <th>About You</th>
                            <th>Mailing List</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                        <s:iterator value="userList" status="userStatus">
                            <tr
                                class="<s:if test="#userStatus.odd == true ">odd</s:if><s:else>even</s:else>">
                                <td><s:property value="name" /></td>
                                <td><s:property value="gender" /></td>
                                <td><s:property value="country" /></td>
                                <td><s:property value="aboutYou" /></td>
                                <td><s:property value="mailingList" /></td>
                                <td><s:url id="editURL" action="editUser">
                                        <s:param name="id" value="%{id}"></s:param>
                                    </s:url> <s:a href="%{editURL}">Edit</s:a></td>
                                <td><s:url id="deleteURL" action="deleteUser">
                                        <s:param name="id" value="%{id}"></s:param>
                                    </s:url> <s:a href="%{deleteURL}">Delete</s:a></td>
                                </tr>
                        </s:iterator>
                    </table>
                </div>
            </s:if>




        </div>
    </body>
</html>