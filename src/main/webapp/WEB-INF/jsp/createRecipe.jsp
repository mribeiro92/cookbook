<html>
<head>
<link rel="shortcut icon" href="/static/favicon.ico" >
<title>Criar Receita</title>
</head>

<body>
<h1>Criar Receita</h1>
<form method="POST" name="criar" action="/recipes">
<div class="caixa" align="center">
<table>
<tr><td>
Titulo:</td><td><input type="text" name="tit">
</td></tr>
<tr><td>
Problema:</td><td><textarea rows="1" cols="25" name="prob"></textarea>
</td></tr>
<tr><td>
Receita:</td><td><textarea rows="5" cols="25" name="rec"></textarea>
</td></tr>
<tr><td>
Autor:</td><td><input type="text" name="auto">
</td></tr>
<tr><td>
<input type="submit" value="Criar !"></td><td><input type="reset" value="Limpar">
</td></tr>
</table>
</div>
</form>
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