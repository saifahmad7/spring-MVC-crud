<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

   <%@include file="./base.jsp"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<div class="container mt-3">
<div class="row">
<div class=col-md-12>

<h1 class="text-center mb-3">Welcome</h1>

<table class="table">
  <thead class="thead-light">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  
  <tbody>
  <c:forEach items = "${products }" var="p">
    <tr>
      <th scope="row">New${p.id}</th>
      <td>${p.name}</td>
      <td>${p.description}</td>
      <td class="font-weight-bold">&#8377; ${p.price}</td>
      <td>
      <a href="delete/${p.id}"><i class="fa-solid fa-trash text-danger" style="font-size: 22px;"></i></a>
      <a href="update/${p.id}"><i class="fa-solid fa-pen-nib text-primary" style="font-size: 22px;"></i></a>
      </td>
      
    </tr>
    </c:forEach>
   
  </tbody>
</table>

<div class="container text-container">
<div class="text-center mb-3">
<a href="add-product" class="btn btn-outline-success">Add Product</a>
</div>
</div>

</div>
</div>
</div>

</body>
</html>