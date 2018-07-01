<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<body>
<h2>Hello World!</h2>
<form action="${pageContext.request.contextPath}/register/checkAccount" method=post>
    用户名：<input type="text" name="userAccount" ><br>

    <input type="submit" name="button" id="button" value="提交">

    <span style="color:red;">
        <%if (request.getAttribute("errorMsg") != null){%>
        <%=request.getAttribute("errorMsg")%>
        <%}%>
  </span>
</form>
</body>
</html>
