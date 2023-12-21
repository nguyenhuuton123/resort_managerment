<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
<head>
     <title>Title</title>
     <style>
          body {
               background-color: #061123;
               height: 100vh;
               display: grid;
               justify-content: center;
               align-content: center;
               color: white;
          }

          .snow {
               width: 500px;
               height: 100px;
               border: 1px solid rgba(255, 255, 255, 0.1);
               background-image: url("data:image/svg+xml,%3Csvg version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' x='0px' y='0px' viewBox='0 0 50 50' style='enable-background:new 0 0 50 50%3B' xml:space='preserve'%3E%3Cstyle type='text/css'%3E.st1%7Bopacity:0.3%3Bfill:%23FFFFFF%3B%7D.st3%7Bopacity:0.1%3Bfill:%23FFFFFF%3B%7D%3C/style%3E%3Ccircle class='st1' cx='5' cy='8' r='1'/%3E%3Ccircle class='st1' cx='38' cy='3' r='1'/%3E%3Ccircle class='st1' cx='12' cy='4' r='1'/%3E%3Ccircle class='st1' cx='16' cy='16' r='1'/%3E%3Ccircle class='st1' cx='47' cy='46' r='1'/%3E%3Ccircle class='st1' cx='32' cy='10' r='1'/%3E%3Ccircle class='st1' cx='3' cy='46' r='1'/%3E%3Ccircle class='st1' cx='45' cy='13' r='1'/%3E%3Ccircle class='st1' cx='10' cy='28' r='1'/%3E%3Ccircle class='st1' cx='22' cy='35' r='1'/%3E%3Ccircle class='st1' cx='3' cy='21' r='1'/%3E%3Ccircle class='st1' cx='26' cy='20' r='1'/%3E%3Ccircle class='st1' cx='30' cy='45' r='1'/%3E%3Ccircle class='st1' cx='15' cy='45' r='1'/%3E%3Ccircle class='st1' cx='34' cy='36' r='1'/%3E%3Ccircle class='st1' cx='41' cy='32' r='1'/%3E%3C/svg%3E");
               background-position: 0px 0px;
               animation: animatedBackground 10s linear infinite;
          }

          .snow div {
               width: 100%;
               height: 100%;
               background-image: url("data:image/svg+xml,%3Csvg version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' x='0px' y='0px' viewBox='0 0 50 50' style='enable-background:new 0 0 50 50%3B' xml:space='preserve'%3E%3Cstyle type='text/css'%3E.st1%7Bopacity:0.7%3Bfill:%23FFFFFF%3B%7D.st3%7Bopacity:0.1%3Bfill:%23FFFFFF%3B%7D%3C/style%3E%3Ccircle class='st3' cx='4' cy='14' r='1'/%3E%3Ccircle class='st3' cx='43' cy='3' r='1'/%3E%3Ccircle class='st3' cx='31' cy='30' r='2'/%3E%3Ccircle class='st3' cx='19' cy='23' r='1'/%3E%3Ccircle class='st3' cx='37' cy='22' r='1'/%3E%3Ccircle class='st3' cx='43' cy='16' r='1'/%3E%3Ccircle class='st3' cx='8' cy='45' r='1'/%3E%3Ccircle class='st3' cx='29' cy='39' r='1'/%3E%3Ccircle class='st3' cx='13' cy='37' r='1'/%3E%3Ccircle class='st3' cx='47' cy='32' r='1'/%3E%3Ccircle class='st3' cx='15' cy='4' r='2'/%3E%3Ccircle class='st3' cx='9' cy='27' r='1'/%3E%3Ccircle class='st3' cx='30' cy='9' r='1'/%3E%3Ccircle class='st3' cx='25' cy='15' r='1'/%3E%3Ccircle class='st3' cx='21' cy='45' r='2'/%3E%3Ccircle class='st3' cx='42' cy='45' r='1'/%3E%3C/svg%3E");
               background-position: 0px 0px;
               animation: animatedBackground 15s linear infinite;
          }

          @keyframes animatedBackground {
               0% {
                    background-position: 0 0;
               }
               100% {
                    background-position: 0px 300px;
               }
          }
     </style>
</head>
<body>
<div class="snow">
     <div></div>
</div>
<h2>home page</h2>
<form action="/home" method="post">
     <input type="text" name="user_id" value="${user.id}">
     <c:forEach items="${products}" var="item">
          <tr>
               <input type="radio" name="product_id" value="${item.ID}">${item.ID}
                    ${item.name}<br>
               price: ${item.price}<br><br>
          </tr>
     </c:forEach>
     <p>Size</p>
     <input type="radio" name="size_id" value="1">nhỏ<br>
     <input type="radio"  name="size_id" value="2">vừa<br>
     <input type="radio"  name="size_id" value="3">lớn<br><br>
     Số lượng: <input type = "text" name = "quantity">
     <p>topping</p>
     <input type="checkbox" name="topping_ids" value="1">
     kem phô mai<br>
     <input type="checkbox" name="topping_ids" value="2">
     trân châu trắng<br>
     <input type="checkbox" name="topping_ids" value="3">
     thạch cà phê<br><br>
     <input type="submit" value="Submit">
</form>

</body>
</html>