<html>
<head>
<link rel="shortcut icon" href="/static/favicon.ico" >
</head>

<body style="font-family:Arial;">

<form method="POST" name="criar" action="/recipes">
<h1>Criar Receita</h1>
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
<input type="submit" value="Criar !"></td><td><input type="reset" value="Limpar">
</td></tr>
</table>
</form>
<br><br>
<a href="javascript:window.history.go(-1)"><img src="/static/voltar.jpg" alt="Voltar" height="50" width="50"></a>

</body>
</html>