<%@ page contentType="text/html; charset=UTF-8"%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> --%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="card m-2">
	<div class="card-header">
		JSP 템플릿 엔진 이해(~.jsp -> ~.java -> .class)
	</div>
	<div class="card-body">
		<%-- 오늘 날짜: <%=request.getAttribute("strDate")%> --%>
		오늘 날짜: ${strDate} <%-- Expression Language(EL) --%>
	</div>
</div>

<div class="card m-2">
	<div class="card-header">
		객체 저장 범위
	</div>
	<div class="card-body">
		<%-- 		
		<p>request 범위 객체 값: <%=request.getAttribute("requestScopeValue") %></p>
		<p>session 범위 객체 값: <%=session.getAttribute("sessionScopeValue") %></p>
		<p>application 범위 객체 값: <%=application.getAttribute("applicationScopeValue") %></p> 
		--%>
		
		<%-- 찾는 순서: request범위 -> session 범위 -> application 범위 --%>
		<p>
			request 범위 객체 값: ${requestScopeValue}<br/>
			<%-- member's name: ${member.getName()} 여기는 원래 이게 맞지만 표현은 이렇게 하지 않는다.--%>
			member's name: ${member.name}<br/>
			member's age: ${member.age}<br/>
			member's job: ${member.job}<br/>
			member's city: ${member.city.name}<br/>
		</p>
		<hr>
		<p>session 범위 객체 값: ${sessionScopeValue}<br/>
			member's name: ${member2.name}<br/>
			member's age: ${member2.age}<br/>
			member's job: ${member2.job}<br/>
			member's city: ${member2.city.name}<br/>
		</p>
		<hr>
		<p>
			application 범위 객체 값: ${applicationScopeValue}<br>
			방문 횟수: ${counter}
		</p>
		<hr>
		<a href="requestScopeSave" class="btn btn-info btn-sm mr-2">request 범위에 객체 저장</a>
		<a href="sessionScopeSave" class="btn btn-info btn-sm mr-2">session 범위에 객체 저장</a>
		<a href="applicationScopeSave" class="btn btn-info btn-sm mr-2">application 범위에 객체 저장</a>
	</div>
</div>

<div class="card m-2">
	<div class="card-header">
		JSTL(Java Standard Tag Library)
	</div>
	<div class="card-body">
		<a href="useJstl1" class="btn btn-info btn-sm mr-2">JSTL1 사용하기</a>
		<a href="useJstl2" class="btn btn-info btn-sm mr-2">JSTL2 사용하기</a>
	</div>
</div>

<div class="card m-2">
	<div class="card-header">
		ModelAndView로 객체 전달
	</div>
	<div class="card-body">
		<a href="modelAndViewReturn" class="btn btn-info btn-sm mr-2">ModelAndView 리턴해서 객체 전달</a>
	</div>
</div>

<div class="card m-2">
	<div class="card-header">
		Model 매개변수로 객체 전달
	</div>
	<div class="card-body">
		<a href="modelArgument" class="btn btn-info btn-sm mr-2">Model 매개변수로 객체 전달</a>
	</div>
</div>

<div class="card m-2">
	<div class="card-header">
		@ModelAttribute로 객체 전달
	</div>
	<div class="card-body">
		<a href="modelAttribute?kind=suit&sex=woman" class="btn btn-info btn-sm mr-2">@ModelAttribute로 객체 전달</a>
	</div>
</div>

<div class="card m-2">
	<div class="card-header">
		Command 객체로 객체 전달
	</div>
	<div class="card-body">
		<a href="commandObject?kind=suit&sex=woman" class="btn btn-info btn-sm mr-2">Command로 객체 전달</a>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>