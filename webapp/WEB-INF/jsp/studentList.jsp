<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>一覧</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .top {
            margin: 30px 0 30px 0;
        }

        .top .tile {
            margin: 0 auto;
            width: 150px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 400;
            font-size: 14px;
        }

        .content {
            margin: 0 auto;
            width: 600px;
            /* height: 500px;*/
            /*border: 1px solid red;*/
        }

        h5 {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 400;
            font-size: 12px;
        }

        .No {
            width: 50px;
        }

        .name {
            width: 80px;
        }

        .age {
            width: 50px;
        }

        .sex {
            width: 50px;
        }


        .clas {
            width: 100px;
        }

        .addr {
            width: 200px;
        }


        img {
            width: 100px;
            height: 200px;
            object-fit: cover;
        }


        .button {
            margin: 0 auto;
            margin-top: 30px;
            width: 200px;
        }

        .button .btn {
            width: 100px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 400;
            font-size: 12px;
            background-color: #92D050; 
            border: 0px;
        }

        table {
            border: 1px solid black;
        }

        td {
            border: 1px solid black;
        }

        th {
            border: 1px solid black;
            background-color: #92D050;
        }

        .collapse {
            border-collapse: collapse;
        }

        .separate {
            border-collapse: separate;
        }


        /*  form {
            border: 1px solid yellow;
        }*/
    </style>
</head>

<body>
    <div class="top">
        <h3 class="tile">学生管理システム</h3>
    </div>

    <form action="${pageContext.request.contextPath}/student" method="post">
        <div class="content">
            <h5>学生一覧</h5>
            <table class="collapse">
                <tr>
                    <th class="No">
                        <label　for="name"　>
                            <h5>ID</h5>
                        </label>
                    </th>
                    <th class="name">
                        <label　for="name"　>
                            <h5>名前</h5>
                        </label>
                    </th>
                    <th class="age">
                        <label　for="age"　>
                            <h5>年齢</h5>
                        </label>
                    </th>
                    <th class="sex">
                        <label　for="sex"　>
                            <h5>性別</h5>
                        </label>
                    </th>
                    <th class="clas">
                        <label　for="clas"　>
                            <h5>Class</h5>
                        </label>
                    </th>
                    <th class="addr">
                        <label　for="addr"　>
                            <h5>住所</h5>
                        </label>
                    </th>
                </tr>
                <c:forEach var="obj" items="${stulist}" varStatus="status">
                <tr>
                    <td class="No">
                        <label　for="name"　>
                            <h5>${obj.id}</h5>
                        </label>
                    </td>
                    <td class="name">
                        <label　for="name"　>
                            <h5>${obj.name}</h5>
                        </label>
                    </td>
                    <td class="age">
                        <label　for="age"　>
                            <h5>${obj.age}</h5>
                        </label>
                    </td>
                    <td class="sex">
                        <label　for="sex"　>
                            <h5>${obj.sex}</h5>
                        </label>
                    </td>
                    <td class="clas">
                        <label　for="clas"　>
                            <h5>${obj.clas}</h5>
                        </label>
                    </td>
                    <td class="addr">
                        <label　for="addr"　>
                            <h5>${obj.addr}</h5>
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
</body>

</html>