<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改用户</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/user/saveUpdate" method="post">
    <input name="userId" type="hidden" value="${user.userId}"/>
    UserName: <input name="userName" value="${user.userName}"/> <br/>
    UserType:
    <input name="userType" type="radio" value="0" ${user.userType eq 0 ? "checked":""}/> 普通用户
    <input name="userType" type="radio" value="1" ${user.userType eq 1 ? "checked":""}/> 管理员
    <br/>
    UserStatus:
    <input name="userStatus" type="radio" value="1" ${user.userStatus eq 1 ? "checked":""}/> 启用
    <input name="userStatus" type="radio" value="0" ${user.userStatus eq 0 ? "checked":""}/> <span style="color: red">禁用</span>
    <br/>
    <input type="submit" value="保存"/> <input type="button" value="放弃" onclick="window.history.back();"/>

</form>

</body>
</html>
