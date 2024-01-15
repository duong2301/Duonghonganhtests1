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
	<header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">

            <li class="nav-item">
              <a class="nav-link" href="Addnews">Addnews</a>
            </li>


          </ul>
         <mvc:form class="d-flex" role="search" action="searchlist" method="get">
        <input name="searchInput" class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
        <button class="btn btn-outline-success" type="submit">Search</button>
      </mvc:form>
        </div>
      </div>
    </nav>
	</header>
	<br>
	<main class="px-5 mt-5">
<table class="table table-bordered">
  <thead class="table-primary">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Title</th>
      <th scope="col">Summary</th>
      <th scope="col">CreateDate</th>
      <th scope="col">StaffName</th>
       <th scope="col">cateName</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="news" items="${newslists}">
   <tr>
        <th scope="row">${news.newsId}</th>
        <td>${news.title}</td>
        <td>${news.summary}</td>
        <td>${news.createdDate}</td>
        <td>${news.staff.staffName}</td>
        <td>${news.category.cateName}</td>
      </tr>
  </c:forEach>
  </tbody>
</table>
	</main>
	<footer>

	</footer>
	<script type="text/javascript" src="${pageContext.request.getContextPath()}/webjars/bootstrap/5.3.0/js/