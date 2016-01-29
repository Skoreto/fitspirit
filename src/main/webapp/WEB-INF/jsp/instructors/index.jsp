<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/shared/layoutSidebarHeader.jsp" %>

<header class="page-heading clearfix">
    <h1 class="heading-title pull-left">${pageTitle}</h1>
    <!-- ==== DROBECKOVA NAVIGACE ==== -->
    <div class="breadcrumbs pull-right">           
    </div>
</header>
<div class="page-content">
    <div class="row page-row">
    	<div class="col-md-8 col-sm-7" id="dynamicContent">
		<!-- ==== HLAVNI OBSAH AKTUALNI STRANKY ==== -->

<div class="page-row">
    <p>Naši instruktoři si poradí s klienty všech věkových kategorií a různé fyzické kondice. Z aktivit, které nabízíme si vybere opravdu každý!</p>
</div>
<div class="row page-row">
  <c:forEach var="user" items="${users.userList}">
        <div class="col-sm-6 col-md-4 col-xs-12 text-center">
            <div class="album-cover instructors-client">
                    <a href="<spring:url value="/instructors/${user.id}" htmlEscape="true" />"><img class="img-responsive" src="<spring:url value="/static/uploads/userImages/${user.profilePhotoName}" htmlEscape="true" />" alt="Ilustrace ${user.lastName}" /></a>
                <div class="desc">
                    <h4><small><a href="<spring:url value="/instructors/${user.id}" htmlEscape="true" />">${user.firstName} ${user.lastName}</a></small></h4>        
                </div>
            </div>
        </div>
  </c:forEach>
</div>

<%@ include file="/WEB-INF/jsp/shared/layoutSidebarFooter.jsp" %>