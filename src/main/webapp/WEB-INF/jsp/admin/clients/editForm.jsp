<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/admin/shared/layoutSidebarHeader.jsp" %>

<c:choose>
	<c:when test="${user['new']}"><c:set var="method" value="post"/></c:when>
	<c:otherwise><c:set var="method" value="put"/></c:otherwise>
</c:choose>

<form:form class="form-horizontal" modelAttribute="user" method="${method}" enctype="multipart/form-data">
	<div class="form-group">
	    <label class="col-sm-2 control-label">Jméno <form:errors path="firstName" cssClass="errors"/></label>
	    <div class="col-sm-10">
	    	<form:input type="text" path="firstName" class="form-control" />
	    </div>
	</div>
	
	<div class="form-group">
	    <label class="col-sm-2 control-label">Příjmení <form:errors path="lastName" cssClass="errors"/></label>
	    <div class="col-sm-10">
	    	<form:input type="text" path="lastName" class="form-control" />
	    </div>
	</div>
	
	<div class="form-group">
	    <label class="col-sm-2 control-label">Login <form:errors path="login" cssClass="errors"/></label>
	    <div class="col-sm-10">
	    	<form:input type="text" path="login" class="form-control" />
	    </div>
	</div>	
	
	<div class="form-group">
	    <label class="col-sm-2 control-label">Heslo <form:errors path="password" cssClass="errors"/></label>
	    <div class="col-sm-10">
	    	<form:input type="password" path="password" class="form-control" />
	    </div>
	</div>
	
	<div class="form-group">
	    <label class="col-sm-2 control-label">Ulice <form:errors path="street" cssClass="errors"/></label>
	    <div class="col-sm-10">
	    	<form:input type="text" path="street" class="form-control" />
	    </div>
	</div>		
	
	<div class="form-group">
	    <label class="col-sm-2 control-label">Město <form:errors path="city" cssClass="errors"/></label>
	    <div class="col-sm-10">
	    	<form:input type="text" path="city" class="form-control" />
	    </div>
	</div>		
	
	<div class="form-group">
	    <label class="col-sm-2 control-label">PSČ <form:errors path="postcode" cssClass="errors"/></label>
	    <div class="col-sm-10">
	    	<form:input type="text" path="postcode" class="form-control" />
	    </div>
	</div>	
	
	<div class="form-group">
	    <label class="col-sm-2 control-label">E-mail <form:errors path="mail" cssClass="errors"/></label>
	    <div class="col-sm-10">
	    	<form:input type="text" path="mail" class="form-control" />
	    </div>
	</div>		
	
	<div class="form-group">
	    <label class="col-sm-2 control-label">Telefon <form:errors path="telephone" cssClass="errors"/></label>
	    <div class="col-sm-10">
	    	<form:input type="text" path="telephone" class="form-control" />
	    </div>
	</div>	
		
	<div class="form-group">
        <label class="col-sm-2 control-label">Foto</label>
        <div class="col-sm-10">
            <input type="file" name="file" />
        </div>
    </div>
		 
	<br/>
	<br/>
	
	<div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">	
           	 <button type="submit" class="btn btn-default">Upravit klienta</button> 		     
	    </div>
	</div>
</form:form>

<%@ include file="/WEB-INF/jsp/admin/shared/layoutSidebarFooter.jsp" %>