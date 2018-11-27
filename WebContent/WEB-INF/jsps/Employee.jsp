<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--   <title>Insert title here</title>-->   
         <title>Employee Form</title>
  </head>
    <body>
        <center>
            <h1>Provide Employee Information</h1>

            <hr />

            <s:form action="saveProcess" modelAttribute="employee">
               <s:hidden path="id" />
                <s:hidden path="" value = "${employee.hobbies}" id = "hobbies"/>
                <table>
               
                    <tr>
                        <th>Full Name:</th>
                        <td><s:input path="fullname"/></td>
                    </tr>
                    <tr>
                        <th>Email:</th>
                        <td><s:input path="email"/></td>
                    </tr>
                    <tr>
                        <th>Gender:</th>
                        <td>
                    <s:radiobutton path="gender" value="Male"/>Male&nbsp;
                    <s:radiobutton path="gender" value="Female"/>Female</td>
                    </tr>
                    <tr>
                        <th>Hobbies:</th>
                        <td>
                    <s:checkbox path="hobbies" value="Sports"/>Sports

                    <s:checkbox path="hobbies" value="Browsing"/>Browsing

                    <s:checkbox path="hobbies" value="Running"/>Running

                    <s:checkbox path="hobbies" value="Chatting"/>Chatting</td>
                    </tr>
                    <tr>
                        <th>Country:</th>
                        <td>
                    <s:select path="country">
                        <s:option value="0">--Select--</s:option>
                        <s:option value="India">India</s:option>
                        <s:option value="Australia">Australia</s:option>
                        <s:option value="Japan">Japan</s:option>
                        <s:option value="America">America</s:option>
                        <s:option value="South Africa">South Africa</s:option>
                        <s:option value="Sri Lanka">Sri Lanka</s:option>
                    </s:select></td>
                    </tr>
                    <tr>
                        <th>Address:</th>
                        <td><s:textarea path="address"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="Save" />&nbsp;
                            <input type="reset" value="Reset" /></td>
                    </tr>
                </table>
            </s:form>
        </center>

        <hr />

        <a href = "listOfEmployee">Back to List</a>
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>
        <script type = "text/javascript">
            $(document).ready(function () {
                var hobbies = $("#hobbies").val().split(",");
                var $checkboxes = $("input[type=checkbox]");
                $checkboxes.each(function (idx, element) {
                    if (hobbies.indexOf(element.value) != -1) {
                        element.setAttribute("checked", "checked");
                        $("#hobbies").val("");
                    } else {
                        element.removeAttribute("checked");
                    }
                });
            });
        </script>
    </body>
</html>