<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登録</title>
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

        #name,
        #age,
        #sex,
        #clas,
        #addr {
            height: 14px;
        }

        .left {
            width: 400px;
            float: left;
        }

        .right {
            width: 200px;
            float: left;
        }

        img {
            width: 100px;
            height: 200px;
            object-fit: cover;
        }

        .clearcss::after {
            content: "";
            display: block;
            clear: both;
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

        /*  form {
            border: 1px solid yellow;
        }*/
    </style>
</head>

<body>
    <div class="top">
        <h3 class="tile">学生管理システム</h3>
    </div>

    <form action="${pageContext.request.contextPath}/studentAdd" method="post">
        <div class="content clearcss">

            <div class="left">
                <h5>学生登録</h5>

                <table>
                    <tr>
                        <td>
                            <label　for="name"　>
                                <h5>名前：</h5>
                            </label>
                        </td>
                        <td>
                            <input id="name" name="name" type="text">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label　for="age"　>
                                <h5>年齢：</h5>
                            </label>
                        </td>
                        <td>
                            <input id="age" name="age" type="text">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label　for="sex"　>
                                <h5>性別：</h5>
                            </label>
                        </td>
                        <td>
                            <input id="sex" name="sex" type="text">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label　for="clas"　>
                                <h5>Class：</h5>
                            </label>
                        </td>
                        <td>
                            <input id="clas" name="clas" type="text">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label　for="addr"　>
                                <h5>住所：</h5>
                            </label>
                        </td>
                        <td>
                            <input class="addr" name="addr" type="text">
                        </td>
                    </tr>
                </table>

            </div>
            <div class="right">
                <img src="${pageContext.request.contextPath}/img/shcool.jpg" />
            </div>
        </div>
        <div class="button">
            <input class="btn" type="submit" value="確認">
        </div>
    </form>
</body>

</html>