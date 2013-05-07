<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="/static/favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipes</title>
</head>
<body style="font-family:Arial;">

<h1>Histórico de Receitas</h1>
<c:forEach var="recipes" items='${recipes}'>
<a href="/recipes/${recipes.id}">${recipes.id}- ${recipes.titulo}</a><br>
</c:forEach>
<br><br>
<a href="javascript:window.history.go(-1)"><img src="/static/voltar.jpg" alt="Voltar" height="50" width="50"></a>
</body>
</html>