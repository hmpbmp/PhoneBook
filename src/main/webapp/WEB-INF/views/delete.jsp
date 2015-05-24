<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <meta charset="utf-8">
  <title>Spring MVC Application</title>

  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css"
        rel="stylesheet">
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">


</head>

<body>

<div id="container">
  <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <a class="brand" href="/">
          <i class="icon-book icon-1x"></i> Address Book</a>
        <ul class="nav">
          <li><a href="/addition">Add Contact</a></li>
          <li><a href="/deletion">Remove Contacts</a></li>
          <li ><a href="/out">Log Out</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>


<div class="container">
  <div class="row">
    <div class="span8 offset2">
      <h2>" "</h2>
      <c:if test="${!empty addresses}">

        <h3>Addresses</h3>
        <table class="table table-bordered table-striped">
          <thead>
          <tr>
            <th>Name</th>
            <th>Address</th>
            <th>Email</th>
            <th>Phone</th>
            <th>&nbsp;</th>
          </tr>
          </thead>
          <tbody>


          <c:forEach items="${addresses}" var="address">
            <tr>
              <td>${address.name}</td>
              <td>${address.address}</td>
              <td>${address.email}</td>
              <td>${address.phone}</td>
              <td>
                <form action="delete/${address._id}" method="post"><input type="submit"
                                                                          class="btn btn-danger btn-mini"
                                                                          value="Delete"/></form>
              </td>
            </tr>
          </c:forEach>
          </tbody>
        </table>
      </c:if>
    </div>
  </div>
</div>


</body>
</html>