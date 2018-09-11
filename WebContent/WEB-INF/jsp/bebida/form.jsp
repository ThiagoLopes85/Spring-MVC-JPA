<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tags:template titulo="Cadastro de Bebida">
	
	<h1>Cadastro de Bebida</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">
			${msg}
		</div>
	</c:if>
	
	<form action="cadastrar" method="post">
		<div class="form-group">
			<label for="id-nome">Nome</label>
			<input type="text" name="nome" class="form-control" id="id-nome">
		</div>
		<div class="form-group">
			<label for="id-validade">Validade</label>
			<input type="text" name="validade" class="form-control" id="id-validade">
		</div>
		<div class="form-group">
			<input type="checkbox" name="alcoolico" value="true" id="id-alcoolico">
			<label for="id-alcoolico">Alcoolico</label>
		</div>
		<input type="submit" value="Cadastrar" class="btn btn-primary">
	</form>
	
</tags:template>