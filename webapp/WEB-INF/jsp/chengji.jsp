<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>成绩一览</title>
</head>
<body>
    <div class="top">
        <h3 class="tile">学生成績一覧表</h3>
    </div>

    <form action="${pageContext.request.contextPath}/index.jsp" method="post">
        <div class="content">
            <h5>成績一覧</h5>
            <table class="collapse">
                <tr>
                    <th class="No">
                        <label　for="id"　>
                            <h5>学生ID:</h5>
                        </label>
                    </th>
                    <th class="name">
                        <label　for="sid"　>
                            <h5>学科ID:</h5>
                        </label>
                    </th>
                    <th class="age">
                        <label　for="name"　>
                            <h5>学科名:</h5>
                        </label>
                    </th>
                    <th class="sex">
                        <label　for="chengji"　>
                            <h5>成績:</h5>
                        </label>
                    </th>
                </tr>
                
               <c:forEach var="obj" items="${stulist}" varStatus="status">
                <tr>
                    <td class="No">
                        <label　for="id"　>
                            <h5>${obj.id}</h5>
                        </label>
                    </td>
                    <td class="name">
                        <label　for="sid"　>
                            <h5>${obj.sid}</h5>
                        </label>
                    </td>
                    <td class="age">
                        <label　for="name"　>
                            <h5>${obj.name}</h5>
                        </label>
                    </td>
                    <td class="sex">
                        <label　for="chengji"　>
                            <h5>${obj.chengji}</h5>
                        </label>
                    </td>
                </tr>
				</c:forEach>
            </table>
        </div>
        <div class="button">
            <input class="btn" type="submit" value="閉じる">
        </div>
    </form>
</html>