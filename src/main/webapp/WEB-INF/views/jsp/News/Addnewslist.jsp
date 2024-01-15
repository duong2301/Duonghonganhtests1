<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href='${pageContext.request.getContextPath()}/webjars/bootstrap/5.3.0/css/bootstrap.min.css' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<body>
	<div class="container">
	<h1 class="text-center">Add News</h1>
	<br>
	    <mvc:form action="Add" method="post" modelAttribute="news">
<div class="form-floating mb-3">
  <mvc:input type="text" class="form-control" id="floatingInput"  name="title"  path="title" placeholder="title"  />
  <label for="floatingInput">Title</label>
</div>
<br>
<div class="form-floating mb-3">
  <mvc:input type="text" class="form-control" id="floatingtext" name="summary" path="summary" placeholder="summary"  />
  <label for="floatingtext">Summary</label>
</div>
<br>
<div class="form-floating mb-3">
  <mvc:input type="date" class="form-control" id="floatingtext"  name="createdDate" path="createdDate" placeholder="date" />
  <label for="floatingtext">Date</label>
</div>

<div class="form-floating mb-3">


<select name="staffName"  class="form-select form-select-lg mb-3" aria-label="Large select example">
  <option selected>Staff</option>
   <c:forEach items="${staffs}" var="staff">
    <option value="${staff.staffName}">${staff.staffName}</option>
   </c:forEach>
</select>


<select name="cateName"  class="form-selec