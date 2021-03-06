<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>

<jsp:include page="client-announcements-search.jsp"></jsp:include>
<head>
	<script type="text/javascript" src="<c:url value="/static/js/client-published-announcements.js"/>"></script>
</head>

<div id="resultado"></div>
<div class="form">
	<div class="button_container">
		<span id="select" class="button-class"><spring:message code="client.button.select"/></span>
		<span id="cancel" class="button-class"><spring:message code="client.button.cancel"/></span>
	</div>
</div>