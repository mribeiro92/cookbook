<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="/static/estilos.css" rel="stylesheet" type="text/css" /> 
	<link rel="shortcut icon" href="/static/favicon.ico">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Histórico de Receitas</title>
</head>
<body>
	<h1>Histórico de Receitas</h1>
	<div class="caixatransparente">
		<a href="/"><img src="/static/voltar.png" alt="Voltar" height="50" width="50"></a>
	</div>
	<div class="caixa" align="center">Procurar: <input type="text" id="proc"  onkeyup="doSearch()" /><br><br>
		<table align="center" id="TabelaReceitas" border=0 width="95%">
			<thead>
				<tr align="center" class="orange">
				<td>Dific.</td>
				<td width="45%">Titulo</td>
				<td>Criação</td>
				<td>Autor</td>
				<td>Opções</td>
				</tr>
			</thead>
				<c:forEach var="recipes" items='${recipes}'	>
					<tr align="center">
					<td>${recipes.dific}</td>
					<td>${recipes.titulo}</td>
					<td>${recipes.creationTimestamp}</td>
					<td>${recipes.autor}</td>
					<td><a href="/recipes/${recipes.externalId}"><img src="/static/procurar.png" alt="Ver" height="30" width="30"></a>
					<a href="/recipes/${recipes.externalId}/delete"><img src="/static/remover.png" alt="Eliminar receita" height="30" width="30"></a>
					<a href="/recipes/${recipes.externalId}/edit"><img src="/static/editar.png" alt="Editar receita" height="30" width="30"></a></td>
					</tr>
				</c:forEach>
		</table>
	</div>


</body>
</html>
    <script type="text/javascript">
        function doSearch() {
    		var searchText = document.getElementById('proc').value;
    		var targetTable = document.getElementById('TabelaReceitas');
    		var targetTableColCount;

    		//Loop through table rows
    		for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {
    			var rowData = '';

    			//Get column count from header row
    			if (rowIndex == 0) {
    				targetTableColCount = targetTable.rows.item(rowIndex).cells.length;
    				continue; //do not execute further code for header row.
    			}

    			//Process data rows. (rowIndex >= 1)
    			for (var colIndex = 0; colIndex < targetTableColCount; colIndex++) {
    				var cellText = '';

    				if (navigator.appName == 'Microsoft Internet Explorer')
    					cellText = targetTable.rows.item(rowIndex).cells.item(colIndex).innerText;
    				else
    					cellText = targetTable.rows.item(rowIndex).cells.item(colIndex).textContent;

    				rowData += cellText;
    			}

    			// Make search case insensitive.
    			rowData = rowData.toLowerCase();
    			searchText = searchText.toLowerCase();

    			//If search term is not found in row data
    			//then hide the row, else show
    			if (rowData.indexOf(searchText) == -1)
    				targetTable.rows.item(rowIndex).style.display = 'none';
    			else
    				targetTable.rows.item(rowIndex).style.display = 'table-row';
    		}
    	}
    </script>