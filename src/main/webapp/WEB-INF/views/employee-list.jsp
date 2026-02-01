	<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<html>
	<head>
	<title>Employees</title>
	<meta charset="UTF-8">
	<style>
	   body {
	       font-family: Arial, sans-serif;
	       background: #f4f6f9;
	       margin: 0;
	       padding: 20px;
	   }
	   h2 {
	       color: #333;
	       text-align: center;
	   }
	   .btn-add {
	       text-decoration: none;
	       color: white;
	       background: #28a745;
	       padding: 10px 15px;
	       border-radius: 4px;
	       font-size: 14px;
	       margin: 10px auto;
	       display: inline-block;
	   }
	   .btn-add:hover {
	       background: #218838;
	   }
	   table {
	       width: 80%;
	       margin: 20px auto;
	       border-collapse: collapse;
	       background: #fff;
	       box-shadow: 0 0 10px rgba(0,0,0,0.1);
	   }
	   th, td {
	       border: 1px solid #007bff;
	       padding: 12px;
	       text-align: center;
	   }
	   th {
	       background: #007bff;
	       color: white;
	   }
	   tr:nth-child(even) {
	       background: #f2f2f2;
	   }
	   .btn-edit {
	       background: #ffc107;
	       padding: 5px 10px;
	       border-radius: 4px;
	       color: white;
	       text-decoration: none;
	       margin-right: 5px;
	   }
	   .btn-edit:hover {
	       background: #e0a800;
	   }
	   .btn-delete {
	       background: #dc3545;
	       padding: 5px 10px;
	       border-radius: 4px;
	       color: white;
	       text-decoration: none;
	   }
	   .btn-delete:hover {
	       background: #c82333;
	   }
	</style>
	</head>
	<body>
	   <h2>Employee List</h2>
	   <div style="text-align:center;">
	       <a class="btn-add" href="${pageContext.request.contextPath}/employees/new"> Add Employee</a>
	   </div>
	   <table>
	       <tr>
	           <th>ID</th>
	           <th>Name</th>
	           <th>Department</th>
	           <th>Salary</th>
	           <th>Actions</th>
	       </tr>
	       <c:forEach var="emp" items="${employees}">
	           <tr>
	               <td>${emp.id}</td>
	               <td>${emp.name}</td>
	               <td>${emp.department}</td>
	               <td>${emp.salary}</td>
	               <td>
	                   <a class="btn-edit" href="${pageContext.request.contextPath}/employees/edit/${emp.id}"> Edit</a>
	                   <a class="btn-delete" href="${pageContext.request.contextPath}/employees/delete/${emp.id}">Delete</a>
	               </td>
	           </tr>
	       </c:forEach>
	   </table>
	</body>
	</html>
