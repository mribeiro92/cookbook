<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="/static/favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Histórico de Receitas</title>
</head>
<body style="font-family:Arial;">

<h1>Histórico de Receitas</h1>
<div class="caixa" align="center"><br>
<table align="center" border=0 width="65%">
<tr align="center" class="orange"><td width="55%">Titulo</td><td>Criação</td><td>Detalhes</td></tr>
<c:forEach var="recipes" items='${recipes}'	>
<tr align="center"><td>${recipes.titulo}</td><td>${recipes.creationTimestamp}</td><td><a href="/recipes/${recipes.externalId}"><img src="/static/procurar.png" alt="Ver" height="30" width="30"></a></td></tr>
</c:forEach>
</table>
</div>
<br><br>
<a href="javascript:window.history.go(-1)"><img src="/static/voltar.png" alt="Voltar" height="50" width="50"></a>
</body>
</html>

<style type="text/css"><!--

body {
	background-color:#777777;
	font-family:Arial;
} 

.caixa {
	text-color:#FFFFFF;
	border-width: 2px;
	border-style:solid;
	border-color:red;
	background-color:#CCCCCC;
	margin: 30;
	padding: 25;
}

.orange{
background-color:#FFA500;
}
--></style>