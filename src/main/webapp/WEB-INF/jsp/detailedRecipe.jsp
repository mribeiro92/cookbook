<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="/static/estilos.css" rel="stylesheet" type="text/css" /> 
	<link rel="shortcut icon" href="/static/favicon.ico" >
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Receita - ${recipes.titulo}</title>
</head>
<body>
	<h1>Detalhes da receita</h1>
	<div class="caixatransparente">
		<a href="/recipes"><img src="/static/voltar.png" alt="Voltar" height="50" width="50"></a>
		<a href="/"><img src="/static/casa.png" alt="Voltar" height="50" width="50"></a>
		<a href="/recipes/create"><img src="/static/adicionar.png" alt="Criar nova receita" height="50" width="50"></a>
		<a href="/recipes/${recipes.externalId}/delete"><img src="/static/remover.png" alt="Eliminar receita" height="50" width="50"></a>
		<a href="/recipes/${recipes.externalId}/edit"><img src="/static/editar.png" alt="Editar receita" height="50" width="50"></a></td>

	</div>
	<div class="caixa" align="center">
		<h2>${recipes.titulo}</h2> (dificuldade ${recipes.dific})<br><br>
		<i>Por:${recipes.autor}</i><br><br><br>
		<b>Problema</b>
		<p>${recipes.problema}</p><br>
		<b>Solução</b>
		<p>${recipes.receita}</p><br>
		<b>Tag's</b><br>
		<p><c:forEach var="tag" items='${recipes.tagSet}'>
		${tag.tag};
		</c:forEach></p><br><br>
		<u>Criação</u>
		<p>${recipes.creationTimestamp}</p><br><br><br>
	</div>

</body>
</html>