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
            <h3>Send an Omikuji!</h3>
            <p><c:out value="${cityerror}"></c:out></p>
            <div class="card-body">


          <form action='/madlibs' method='post'>

            <label>Pick any number from 5 to 25</label>
            <input type="number" name="number" min="5" max="25">
<br>
            <label>Enter the name of any city</label>
            <input type="text" name='city'>
            <br>
            <label>Enter the name of any real person</label>
            <input type="text" name='person'>
            <br>
            <label>Enter professional endeavor or hobby:</label>
            <input type="text" name='hobby'>
            <br>
            <label>Enter any type of living thing.</label>
            <input type="text" name='living'>
            <br>
            <label>Say something nice to someone:</label>
            <input type="textarea" name='nice'>
            <p>Send and show a friend</p>
            <input type='submit' value='Send'>
            <br>          
          </form>
          

            </div>
          </div>     
        </div>
  </body>
</html>