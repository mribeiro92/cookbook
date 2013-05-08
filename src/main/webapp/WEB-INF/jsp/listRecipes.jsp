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
<table align="center" border=1>
<tr><td>ID</td><td>Titulo</td><td>Criação</td><td>Detalhes</td></tr>
<c:forEach var="recipes" items='${recipes}'>
<tr align="center"><td>${recipes.id}</td><td>${recipes.titulo}</td><td>${recipes.data}</td><td><a href="/recipes/${recipes.id}"><img src="/static/procurar.png" alt="Ver" height="30" width="30"></a></td></tr>
</c:forEach>
</table>
<br><br>
<a href="javascript:window.history.go(-1)"><img src="/static/voltar.jpg" alt="Voltar" height="50" width="50"></a>
</body>
</html>