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

<body >

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


<div class="container"  margintop="330px">
    <div class="row">
        <div class="span4 offset2 ">
            <h2>"" </h2>
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
                <form:label cssClass="control-label" path="imageURL">ImageURL:</form:label>
                <div class="controls">
                    <form:input path="imageURL"/>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <input type="submit" value="Add Record" class="btn btn-success"/>
                    </form:form>
                </div>
            </div>


        </div>
    </div>
</div>


</body>
</html>