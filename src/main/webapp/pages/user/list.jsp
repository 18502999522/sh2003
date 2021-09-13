<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户列表</title>
    <script>
        function del(id){
            if(confirm("确认删除？")){
                window.location.href = "${pageContext.request.contextPath}/user/delete?userId=" + id;
            }
        }

    </script>
</head>
<body>

<a href="${pageContext.request.contextPath}/user/add">新增用户</a>

<table border="1">
    <caption>用户列表</caption>
    <thead>
      <tr><th>ID</th><th>UserName</th><th>UserType</th><th>UserStatus</th><th>Operate</th></tr>
    </thead>

    <tbody>
        <c:forEach var="u" items="${userList}">
            <tr>
                <td>${u.userId}</td><td>${u.userName}</td><td>${u.userType eq 0 ? "普通用户":"管理用户"}</td><td>${u.userStatus eq 1 ? "可用":"禁用"}</td>

                <td>
                    <a href="${pageContext.request.contextPath}/user/update?userId=${u.userId}">修改</a>
                    <a href="javascript:del(${u.userId});">删除</a>
                </td>
            </tr><br/>
        </c:forEach>
    </tbody>

</table>
</body>
</html>
