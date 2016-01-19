<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<%@ include file="/WEB-INF/jsp/shared/layoutSidebarHeader.jsp" %>

<div id="blueimp-gallery" class="blueimp-gallery">
    <div class="slides"></div>
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>

<div class="page-row">
    <p>Chceme, abyste se u nás cítily příjemně a tomu jsme podřídili zbudování celého studia. Pro maminky s dětmi máme připravený dětský koutek se spoustou hraček.</p>
</div>
<div class="row page-row">
  <c:forEach var="room" items="${rooms.roomList}">

        <div class="col-md-6 col-sm-6 col-xs-12 text-center">
            <div class="album-cover rooms-client">
                    <a href="<spring:url value="/static/images/room_thumbnail_example.jpg" htmlEscape="true" />" data-gallery><img class="img-responsive" src="<spring:url value="/static/images/room_thumbnail_example.jpg" htmlEscape="true" />" alt="Ilustrace ${room.name}" /></a>
                <div class="desc">
                    <h4><small><a href="<spring:url value="/static/images/room_thumbnail_example.jpg" htmlEscape="true" />" title="${room.name}" data-gallery>${room.name}</a></small></h4>                  
                </div>
            </div>
        </div>
  </c:forEach>
</div>

<%@ include file="/WEB-INF/jsp/shared/layoutSidebarFooter.jsp" %>