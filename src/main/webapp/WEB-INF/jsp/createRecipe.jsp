<html>
<head>
	<link href="/static/estilos.css" rel="stylesheet" type="text/css" /> 
	<link rel="shortcut icon" href="/static/favicon.ico" >
	<title>Criar Receita</title>
</head>
<body>
	<h1>Criar Receita</h1>
	<div class="caixatransparente">
		<a href="javascript:window.history.go(-1)"><img src="/static/voltar.png" alt="Voltar" height="50" width="50"></a><br>
	</div>
	<form method="POST" name="criar" class="submit" action="/recipes">
	<div class="caixa" align="center">
		<table>
		<tr><td>
		Titulo:</td><td><input type="text" name="tit" >
		</td></tr>
		<tr><td>
		Problema:</td><td><textarea rows="1" cols="25" name="prob"></textarea>
		</td></tr>
		<tr><td>
		Receita:</td><td><textarea rows="5" cols="25" name="rec"></textarea>
		</td></tr>
		<tr><td>
		Dificuldade:</td><td><input type="text" name="dif" maxlength="1" size="1"> (0 - b&aacute;sico; 9 - imposs&iacute;vel)
		</td></tr>
		<tr><td>
		Tag's:</td><td><textarea rows="5" cols="25" name="tag1"></textarea>
		</td></tr>
		<tr><td>
		Autor:</td><td><input type="text" name="auto">
		</td></tr>
		<tr><td>
		<input type="submit" value="Criar !"  onclick="myFunction()"></td><td><input type="reset" value="Limpar">
		</td></tr>
		</table>
		
	</div>
	</form>

</body>
</html>

<script>
function myFunction()
{
alert("Prestes a criar uma nova receita...");
}
</script>