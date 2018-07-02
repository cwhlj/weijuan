<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script>
    function sub() {
        debugger;
        //var datas = '{"userAccount":"' + $('#userAccount').val();
        $.ajax({
            type : 'POST',
            contentType : 'application/json',
            url : "${pageContext.request.contextPath}/register/checkAccount",
            processData : false,
            dataType : 'json',
            data : {"userAccount": $('#userAccount').val()},
            success : function(data) {
                alert("errorMsg: " + data.errorMsg);
            },
            error : function(XMLHttpRequest, textStatus, errorThrown) {
                alert("出现异常，异常信息："+textStatus,"error");
            }
        });
    };
</script>
<body>
<h2>Hello World!</h2>
<form action="${pageContext.request.contextPath}/register/checkAccount" method=post>
    用户名：<input type="text" name="userAccount" ><br>

    <input type="submit" name="button" id="button" value="提交" onclick="sub()">

    <span style="color:red;">
        <%if (request.getAttribute("errorMsg") != null){%>
        <%=request.getAttribute("errorMsg")%>
        <%}%>
  </span>
</form>
</body>
</html>
