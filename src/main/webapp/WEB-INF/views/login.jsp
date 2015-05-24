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
    <link rel="stylesheet" href="http://getbootstrap.com/examples/signin/signin.css">


</head>

<div class="jumbotron"  style="background-image: url(http://i60.tinypic.com/fylxl.jpg); background-size: 100%; ">
    <img src="http://i57.tinypic.com/2hfottu.png">
</div>

<body style="background-image: url(https://mryanhouse.files.wordpress.com/2014/04/atmosphere-clouds.jpg);background-size:100% auto;">

<div class="container">

    <form:form method="post" action="login" commandName="user" class="form-signin">
    <div class="control-group">
        <form:label path="login" placeholder="Login" >Login:</form:label>
        <div class="controls">
            <form:input class="form-control" path="login" />
        </div>
    </div>
    <div class="control-group">
        <form:label path="password" placeholder="Pass">Password:</form:label>
        <div class="controls">
            <form:input class="form-control" path="password"/>
        </div>
    </div>
    <div class="checkbox">
        <label>
            <input type="checkbox" value="remember-me"> Remember me
        </label>
    </div>
    <div class="control-group">
        <div class="controls">
            <input type="submit" value="Sign In" class="btn btn-success"/>
            </form:form>
        </div>
    </div>

</div>
</body>
</html>
