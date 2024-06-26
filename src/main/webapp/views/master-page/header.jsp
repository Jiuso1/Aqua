<%--
 * header.jsp
 *
 * Copyright (C) 2018 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<div>
	<a href="#"><img src="images/logo.png" alt="Acme Dance Co., Inc." /></a>
</div>

<div>
	<ul id="jMenu">
		<!-- Do not forget the "fNiv" class for the first level links !! -->
		<security:authorize access="hasRole('ADMIN')">
			<li><a class="fNiv"><spring:message	code="master.page.administrator" /></a>
				<ul>
					<li class="arrow"></li>
					<li><a href="administrator/action-1.do"><spring:message code="master.page.administrator.action.1" /></a></li>
					<li><a href="administrator/action-2.do"><spring:message code="master.page.administrator.action.2" /></a></li>					
				</ul>
			</li>
		</security:authorize>
		
		<security:authorize access="isAnonymous()">
			<li><a class="fNiv" href="security/login.do"><spring:message code="master.page.login" /></a></li>
		</security:authorize>
		
		<security:authorize access="isAnonymous()">
			<li><a class="fNiv" href="register/register.do"><spring:message code="master.page.register" /></a></li>
		</security:authorize>
		
		<security:authorize access="isAuthenticated()">
			<li>
				<a class="fNiv"> 
					<spring:message code="master.page.profile" /> 
			        (<security:authentication property="principal.username" />)
				</a>
				<ul>
					<li class="arrow"></li>
					<li><a href="profile/famous-quotes.do"><spring:message code="master.page.profile.action.1" /></a></li>
					<li><a href="profile/action-2.do"><spring:message code="master.page.profile.action.2" /></a></li>
					<li><a href="profile/action-3.do"><spring:message code="master.page.profile.action.3" /></a></li>					
					<li><a href="j_spring_security_logout"><spring:message code="master.page.logout" /> </a></li>
				</ul>
			</li>
		</security:authorize>
		
		<security:authorize access="isAuthenticated()">
			<li>
				<a class="fNiv">
					<spring:message code="master.page.profile.curso" />
			        (<security:authentication property="principal.username" />)
				</a>
				<ul>
					<li class="arrow"></li>
					<li> <a href="curso/list.do"><spring:message code="master.page.profile.curso.list"></spring:message></a> </li>
					<security:authorize access="hasRole('ACADEMIA')">
						<li> <a href="curso/create.do"><spring:message code="master.page.profile.curso.create"></spring:message></a> </li>
					</security:authorize>
				</ul>
			</li>
		</security:authorize>
		
		<security:authorize access="isAnonymous()">
			<li>
				<a class="fNiv">
					<spring:message code="master.page.profile.curso" />
				</a>
				<ul>
					<li class="arrow"></li>
					<li> <a href="curso/listForAnonymous.do"><spring:message code="master.page.profile.curso.list"></spring:message></a> </li>
					<security:authorize access="hasRole('ACADEMIA')">
						<li> <a href="curso/create.do"><spring:message code="master.page.profile.curso.create"></spring:message></a> </li>
					</security:authorize>
				</ul>
			</li>
		</security:authorize>
		
		<security:authorize access="isAuthenticated()">
			<li>
				<a class="fNiv">
					<spring:message code="master.page.profile.estilo" />
			        (<security:authentication property="principal.username" />)
				</a>
				<ul>
					<li class="arrow"></li>
					<li> <a href="estilo/list.do"><spring:message code="master.page.profile.estilo.list"></spring:message></a> </li>
					<security:authorize access="hasRole('ADMIN')">
						<li> <a href="estilo/create.do"><spring:message code="master.page.profile.estilo.create"></spring:message></a> </li>
					</security:authorize>
				</ul>
			</li>
		</security:authorize>
		
		<security:authorize access="isAnonymous()">
			<li>
				<a class="fNiv">
					<spring:message code="master.page.profile.estilo" />
				</a>
				<ul>
					<li class="arrow"></li>
					<li> <a href="estilo/list.do"><spring:message code="master.page.profile.estilo.list"></spring:message></a> </li>
					<security:authorize access="hasRole('ADMIN')">
						<li> <a href="estilo/create.do"><spring:message code="master.page.profile.estilo.create"></spring:message></a> </li>
					</security:authorize>
				</ul>
			</li>
		</security:authorize>
		
		<security:authorize access="isAuthenticated()">
			<li>
				<a class="fNiv">
					<spring:message code="master.page.profile.tutorial" />
			        (<security:authentication property="principal.username" />)
				</a>
				<ul>
					<li class="arrow"></li>
					<li> <a href="tutorial/list.do"><spring:message code="master.page.profile.tutorial.list"></spring:message></a> </li>
					<security:authorize access="hasRole('ACADEMIA')">
						<li> <a href="tutorial/create.do"><spring:message code="master.page.profile.tutorial.create"></spring:message></a> </li>
					</security:authorize>
				</ul>
			</li>
		</security:authorize>
		
		<security:authorize access="isAuthenticated()">
			<li>
				<a class="fNiv">
					<spring:message code="master.page.profile.solicitudes" />
			        (<security:authentication property="principal.username" />)
				</a>
				<ul>
					<li class="arrow"></li>
					<li> <a href="solicitud/list.do"><spring:message code="master.page.profile.solicitudes.list"></spring:message></a> </li>
				</ul>
			</li>
		</security:authorize>
		
		<security:authorize access="hasRole('ALUMNO')">
			<li><a class="fNiv" href="alumno/edit.do"><spring:message code="master.page.alumno.editAlumno" /></a></li>
		</security:authorize>
		
		<security:authorize access="isAuthenticated()">
			<li><a class="fNiv" href="security/logout.do"><spring:message code="master.page.logout" /></a></li>
		</security:authorize>
		
	</ul>
</div>

<div>
	<a href="?language=en">en</a> | <a href="?language=es">es</a>
</div>

