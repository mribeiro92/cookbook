<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="/static/favicon.ico" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Receita - ${recipes.titulo}</title>
</head>
<body style="font-family:Arial;">

<h1>Detalhes da receita</h1>
<div class="caixa" align="center">
<h2>${recipes.titulo}</h2><br>
<i>Por:${recipes.autor}</i><br><br><br>
<b>Problema</b>
<p>${recipes.problema}</p><br>
<b>Solução</b>
<p>${recipes.receita}</p><br><br>
<u>Criação</u>
<p>${recipes.creationTimestamp}</p><br><br><br>
</div>
<a href="javascript:window.history.go(-1)"><img src="/static/voltar.png" alt="Voltar" height="50" width="50"></a>
<a href="/"><img src="/static/casa.png" alt="Voltar" height="50" width="50"></a>
<!--<a href="/recipes/delete"><img src="/static/remover.png" alt="Eliminar receita" height="50" width="50"></a>
<a href="/recipes/edit"><img src="/static/editar.png" alt="Editar receita" height="50" width="50"></a>-->

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