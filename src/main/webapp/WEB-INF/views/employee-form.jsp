<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Employee Form</title>
<style>
   body {
       font-family: Arial, sans-serif;
       background: #eef2f7;
       margin: 0;
       padding: 20px;
   }
   h2 {
       color: #444;
       text-align: center;
       margin-bottom: 20px;
   }
   form {
       width: 50%;
       margin: auto;
       background: #fff;
       padding: 25px;
       border-radius: 10px;
       border: 2px solid #007bff; /* blue border for form */
       box-shadow: 0 4px 12px rgba(0,0,0,0.15);
   }
   label {
       font-weight: bold;
       display: block;
       margin-top: 10px;
       margin-bottom: 6px;
       color: #333;
   }
   input[type="text"], input[type="number"] {
       width: 95%;
       padding: 10px;
       margin-bottom: 15px;
       border: 1px solid #ccc;
       border-left: 5px solid #007bff; /* left border highlight */
       border-radius: 5px;
       transition: border 0.3s;
   }
   input[type="text"]:focus, input[type="number"]:focus {
       border: 1px solid #007bff;
       border-left: 5px solid #28a745; /* turns green on focus */
       outline: none;
   }
   input[type="submit"] {
       background: #28a745;
       color: white;
       border: none;
       padding: 12px 18px;
       border-radius: 5px;
       cursor: pointer;
       font-size: 15px;
       display: block;
       margin: auto;
       transition: background 0.3s;
   }
   input[type="submit"]:hover {
       background: #218838;
   }
</style>
</head>
<body>
   <h2>Employee Form</h2>
   <form:form method="post" modelAttribute="employee"
       action="${pageContext.request.contextPath}/employees">
       <form:hidden path="id" />
       <label for="name">Name:</label>
       <form:input path="name" type="text" />
       <label for="department">Department:</label>
       <form:input path="department" type="text" />
       <label for="salary">Salary:</label>
       <form:input path="salary" type="number" />
       <input type="submit" value=" Save Employee" />
   </form:form>
</body>
</html>
