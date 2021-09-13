<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增用户</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script>

        $(function(){

            $("input[name=\"userName\"]").change(function(){
                var username = this.value;
                if(username){
                    $.getJSON("${pageContext.request.contextPath}/user/ajaxGetByUserName",{userName:username}, function(result){
                        var text;
                        var color;
                        if(result.code){
                            text = "用户名可用";
                            color = "green";
                        }else{
                            text = "用户名已占用";
                            color = "red";
                        }
                        $("#msg").text(text);
                        $("#msg").css("color",color);
                    });
                }
            });
        });

    </script>
</head>
<body>

<form action="${pageContext.request.contextPath}/user/save" method="post">

    UserName: <input name="userName"/> <span id="msg"></span></font> <br/>
    UserPwd: <input name="userPwd"/> <br/>
    UserType:
    <input name="userType" type="radio" value="0"/> 普通用户
    <input name="userType" type="radio" value="1"/> 管理员
    <br/>
    UserStatus:
    <input name="userStatus" type="radio" value="1"/> 启用
    <input name="userStatus" type="radio" value="0"/> <span style="color: red">禁用</span>
    <br/>
    <input type="submit" value="保存"/> <input type="button" value="放弃" onclick="window.history.back();"/>

</form>

</body>
</html>
