<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>User Management Application</title>
</head>
<body>
<center>
  <h1>User Management</h1>
  <h2>
    <a href="<c:url value='/users?action=create'/>">Add New User</a>
    |
    <a href="<c:url value='/users'/>">All Users</a>
  </h2>
</center>

<div align="center" style="margin-bottom: 20px;">
  <form action="<c:url value='/users'/>" method="get">
    <input type="hidden" name="action" value="search" />
    <input type="text" name="keyword" placeholder="Enter country name..." value="${keyword}" style="width: 250px; padding: 5px;"/>
    <button type="submit" style="padding: 5px 10px;">Search</button>
  </form>
</div>

<div align="center">
  <table border="1" cellpadding="5">
    <caption><h2>List of Users</h2></caption>
    <tr>
      <th>ID</th>
      <th>
        <c:choose>
          <c:when test="${currentOrder == 'asc'}">
            <a href="<c:url value='/users?action=sort&order=desc'/>" style="text-decoration: none; color: black;">Name 👆 (A-Z)</a>
          </c:when>

          <c:when test="${currentOrder == 'desc'}">
            <a href="<c:url value='/users?action=sort&order=asc'/>" style="text-decoration: none; color: black;">Name 👇 (Z-A)</a>
          </c:when>

          <c:otherwise>
            <a href="<c:url value='/users?action=sort&order=asc'/>" style="text-decoration: none; color: black;">Name ↕️</a>
          </c:otherwise>
        </c:choose>
      </th>
      <th>Email</th>
      <th>Country</th>
      <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
      <tr>
        <td><c:out value="${user.id}"/></td>
        <td><c:out value="${user.name}"/></td>
        <td><c:out value="${user.email}"/></td>
        <td><c:out value="${user.country}"/></td>
        <td>
          <a href="<c:url value='/users?action=edit&id=${user.id}'/>">Edit</a>
          &nbsp;&nbsp;&nbsp;&nbsp;
          <a href="<c:url value='/users?action=delete&id=${user.id}'/>" onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>