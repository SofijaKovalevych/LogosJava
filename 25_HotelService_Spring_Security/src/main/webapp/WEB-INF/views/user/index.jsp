<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h2 align="center">Welcome USER</h2>
<style>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
<link href="calendar.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="calendar.js"></script>
<c:if test="${param.fail}">
	<div class="col-sm-12 col-xs-12 text-center">
			Fail to autorize
	</div>
</c:if>
<div class="col-md-3 col-xs-12">
<label for="date">Dete: </label><input type="text" id="date" name="date" readonly="readonly" size="10" onclick="showcalendar(this)"/>
<label for="date">Dete: </label><input type="text" id="date" name="date" readonly="readonly" size="10" onclick="showcalendar(this)"/>
<div class="row">
</div>
</div>
<div class="col-md-6 col-xs-12">
	<div class="col-sm-12 col-xs-12 parent">
		<c:forEach items="${citys}" var="city">
			<div>
				<img src="/images/city/${city.id}.jpg?version=${city.version}" width="20%">
				<div>
					<a href="/city/${city.id}" class="btn btn-primary">${city.name}</a>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
<div class="col-md-3 col-xs-12">
<ul>
	<c:forEach items="${citys}" var="city">
		<li><a href="/city/${city.id}">${city.name}</a></li>
	</c:forEach>
</ul>
<h2>conn</h2>
<a href="/conn">DoSomethink</a>
<h2>Go</h2>
<a href="/gogo">GO</a>
<h2>Dos</h2>
<a href="/dos">Dos</a>
<h2>Link</h2>
<a href="/link">Link</a>
</div>