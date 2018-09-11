<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tags:template titulo="Lista de Bebidas">

	<h1>Lista de Bebidas!</h1>
	
	<table class="table">
		<tr>
			<th>Código</th>
			<th>Nome</th>
			<th>Data</th>
			<th>Alcoolico</th>
			<th></th>
		</tr>
		<c:forEach var="bebida" items="${bebidas }">
			<tr>
				<td>${bebida.codigo }</td>
				<td>${bebida.nome }</td>
				<td>
					<fmt:formatDate value="${bebida.validade.time }"
						pattern="dd/MM/yyyy"/>
				</td>
				<td>${bebida.alcoolico }</td>
				<td>
					<a href="<c:url value="/bebida/editar/${bebida.codigo }"/>">Editar</a>
				</td>
			</tr>
		</c:forEach>
	</table>

</tags:template>