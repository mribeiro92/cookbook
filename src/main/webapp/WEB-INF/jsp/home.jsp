<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="/static/estilos.css" rel="stylesheet" type="text/css" /> 
	<link rel="shortcut icon" href="/static/favicon.ico" >
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cookbook Manager xpto</title>
</head>
<body>
	<h1> Cookbook Manager Eng.Soft. </h1>
		<div class="caixa" align="center">
		Bem-vindo! Este é um cookbook espectacular sobre coisas de Informática, feito para Eng.Software. A data de hoje 
		é ${currentTime} e futuramente será usada como elemento de registo de uma receita.<br><br><br>
		<a href="/recipes/create"><img src="/static/adicionar.png" alt="Criar nova receita" height="120" width="120"></a>
		<a href="/recipes"><img src="/static/lista.png" alt="Listar todas as receitas" height="120" width="120"></a>
		<a href="/recipes"><img src="/static/remover.png" alt="Eliminar receitas" height="120" width="120"></a><br>
	</div>	
</body>
</html>