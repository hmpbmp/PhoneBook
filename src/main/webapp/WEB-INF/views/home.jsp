
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


</head>

<body style="background-color: lightyellow">
<div class="container" style="background-color: lightyellow"  >
    <div class="row">
        <div class="span8 offset2">
            <h1 style="font-family: fantasy">Address Book</h1>
            <form:form method="post" action="add" commandName="address" class="form-horizontal">
            <div class="control-group">
                <form:label cssClass="control-label" path="name">Name:</form:label>
                <div class="controls">
                    <form:input path="name"/>
                </div>
            </div>
            <div class="control-group">
                <form:label cssClass="control-label" path="address">Address:</form:label>
                <div class="controls">
                    <form:input path="address"/>
                </div>
            </div>
            <div class="control-group">
                <form:label cssClass="control-label" path="email">Email:</form:label>
                <div class="controls">
                    <form:input path="email"/>
                </div>
            </div>
            <div class="control-group">
                <form:label cssClass="control-label" path="phone">Phone:</form:label>
                <div class="controls">
                    <form:input path="phone"/>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <input type="submit" value="Add Record" class="btn btn-success"/>
                    </form:form>
                </div>
            </div>

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
                                <form action="delete/${address._id}" method="post"><input type="submit" class="btn btn-danger btn-mini" value="Delete"/></form>
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