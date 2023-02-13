<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Counter</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
<div class="container">
  <div class="card mt-5">
            <h3>Here's your Omikuji!</h3>

            <div class="card-body">

              <div class="card-body" style="background-color:#63C5DA">
                <p>In <%String number = (String)session.getAttribute("number");out.print(number);%>
                years, you will live in <%String city = (String)session.getAttribute("city");out.print(city);%> with 
                <%String name = (String)session.getAttribute("name");out.print(name);%> as your roommate, 
                <%String hobby = (String)session.getAttribute("hobby");out.print(hobby);%> for a living. The next time you see a 
                <%String living = (String)session.getAttribute("living");out.print(living);%>, you will have good luck. Also, 
                <%String nice = (String)session.getAttribute("nice");out.print(nice);%></p>
              </div>

              <a href="http://localhost:8080/omikuji">Go Back</a>

            </div>


            </div>
          </div>     
        </div>
  </body>
</html>