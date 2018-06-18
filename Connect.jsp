<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>SELECT Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/employee.employeee"
         user = "root"  password = "Root"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from student.friends;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Emp ID</th>
            <th>Emp Name</th>
            <th>Email Id</th>
            <th>Phone No</th>
			<th>Address</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.Emp_id}"/></td>
               <td><c:out value = "${row.Emp_name}"/></td>
               <td><c:out value = "${row.Email_id}"/></td>
               <td><c:out value = "${row.Phone_no}"/></td>				        <td><c:out value = "${row.Address}"/></td>
			</tr>
         </c:forEach>
      </table>
 
   </body>
</html>