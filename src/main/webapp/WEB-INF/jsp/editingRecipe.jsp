<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="/static/estilos.css" rel="stylesheet" type="text/css" /> 
	<link rel="shortcut icon" href="/static/favicon.ico" >
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Editiar Receita</title>
</head>
<body>
	
	<form method="GET" name="criar" action="/recipes">
		<h1>Editar Receita</h1>
		<div class="caixatransparente">
			<a href="javascript:window.history.go(-1)"><img src="/static/voltar.png" alt="Voltar" height="50" width="50"></a><br>
		</div>
		<div class="caixa" align="center">
			<table>
				<tr><td>
				Titulo:</td><td><input type="text" name="tit" value="${recipes.titulo}">
				</td></tr>
				<tr><td>
				Problema:</td><td><textarea rows="1" cols="25" name="prob">${recipes.problema}</textarea>
				</td></tr>
				<tr><td>
				Receita:</td><td><textarea rows="5" cols="25" name="rec">${recipes.receita}</textarea>
				</td></tr>
				<tr><td>
				Dificuldade:</td><td><input type="text" name="dif" maxlength="1" size="1" value="${recipes.dific}"> (0 - b&aacute;sico; 9 - imposs&iacute;vel)
				</td></tr>
				<tr><td>
				<input type="submit" value="Criar !"></td><td><input type="reset" value="Limpar">
				</td></tr>
			</table>
		</div>
	</form>
	<br><br>
</body>
</html>