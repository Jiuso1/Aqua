<%--
 * list.jsp
 *
 * Copyright (C) 2017 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<display:table pagesize="5" class="displaytag" keepStatus="true"
	name="cursos" requestURI="${requestURI}" id="row">
	
	<spring:message code="curso.titulo" var="tituloHeader" />
	<display:column property="titulo" title="${tituloHeader}" sortable="true" />

	<spring:message code="curso.fechaini" var="fechainiHeader" />
	<display:column property="fechaini" title="${fechainiHeader}" sortable="true" />

	<spring:message code="curso.fechafin" var="fechafinHeader" />
	<display:column property="fechafin" title="${fechafinHeader}" sortable="true" />
	
	<spring:message code="curso.diaSemana" var="diaSemanaHeader" />
	<display:column property="diaSemana" title="${diaSemanaHeader}" sortable="false" />
	
	<spring:message code="curso.hora" var="horaHeader" />
	<display:column property="hora" title="${horaHeader}" sortable="false" />
	
	<spring:message code="curso.nivel" var="nivelHeader" />
	<display:column property="nivel" title="${nivelHeader}" sortable="true" />

</display:table>