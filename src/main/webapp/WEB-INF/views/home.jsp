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

<body style=" background-image: url(http://vaupci.com/wp-content/uploads/2014/02/fountain-pen-on-paper.jpg);background-repeat: no-repeat; background-size:100% auto;">


<div id="container">
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand" href="">
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

                <c:forEach items="${addresses}" var="address">
                    <div class="row-fluid">
                        <div class="span2">
                            <img src="${address.imageURL}"
                                 class="img-rounded"/>
                        </div>
                        <div class="span4">
                            <h2>${address.name}</h2>
                            <ul class="unstyled">
                                <li><i class="icon-phone"></i> ${address.phone}</li>
                                <li><a href="mailto:${address.email}" class="btn btn-mini"><i class="icon-envelope"></i></a> ${address.email}
                                </li>
                                <li><i class="icon-globe"></i> ${address.address}</li>
                            </ul>
                        </div>
                    </div>
                </c:forEach>
            </c:if>
        </div>
    </div>
</div>


</body>
</html>