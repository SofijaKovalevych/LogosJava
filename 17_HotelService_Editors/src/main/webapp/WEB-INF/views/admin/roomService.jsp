<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="row">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="/admin/aditionalService">Aditional Service</a></li>
					<li><a href="/admin/city">City</a></li>
					<li><a href="/admin/hotelName">Hotel Name</a></li>
					<li><a href="/admin/typeOfBathRoom">Type Of Bath Room</a></li>
					<li><a href="/admin/typeOfRoom">Type Of Room</a></li>
					<li class="active"><a href="/admin/roomService">Room Service</a><span
						class="sr-only">(current)</span></li>
				</ul>
			</div>
		</div>
	</nav>
</div>
<div class="row">
	<div class="col-md-3 col-xs-12"></div>
	<div class="col-md-7 col-xs-12">
		<div class="row">
			<div class="col-md-12 col-xs-12">
				<form:form class="form-horizontal" action="/admin/roomService" method="POST" modelAttribute="roomService">
					<div class="form-group">
    					<label for="hotelName" class="col-sm-2 control-label">Hotel Name</label>
    					<div class="col-sm-10">
      						<form:select class="form-control" path="hotelName" id="hotelName" items="${hotelNames}" itemValue="id" itemLabel="name"/>
    					</div>
  					</div>
  					<div class="form-group">
    					<label for="roomService" class="col-sm-2 control-label">Room number</label>
    					<div class="col-sm-10">
      						<form:input type="text" class="form-control" path="roomNumber" id="roomService"/>
    					</div>
  					</div>
  					<div class="form-group">
    					<label for="roomService" class="col-sm-2 control-label">Rooms in number</label>
    					<div class="col-sm-10">
      						<form:input type="text" class="form-control" path="room" id="roomService"/>
    					</div>
  					</div>
  					<div class="form-group">
    					<label for="roomService" class="col-sm-2 control-label">Price</label>
    					<div class="col-sm-10">
      						<form:input type="text" class="form-control" path="price" id="roomService"/>
    					</div>
  					</div>
  					<div class="form-group">
    					<label for="typeOfBathRoom" class="col-sm-2 control-label">Type of bath room</label>
    					<div class="col-sm-10">
      						<form:select class="form-control" path="typeOfBathRoom" id="typeOfBathRoom" items="${typeOfBathRooms}" itemValue="id" itemLabel="type"/>
    					</div>
  					</div>
  					<div class="form-group">
    					<label for="typeOfRoom" class="col-sm-2 control-label">Type of room</label>
    					<div class="col-sm-10">
      						<form:select class="form-control" path="typeOfRoom" id="typeOfRoom" items="${typeOfRooms}" itemValue="id" itemLabel="type"/>
    					</div>
  					</div>
  					<div class="form-group">
    					<div class="col-sm-offset-2 col-sm-10">
      						<button type="submit" class="btn btn-primary">Create</button>
      						<a href  = "/admin/roomService/cancel" class="btn btn-primary" >Cancel</a>
    					</div>
  					</div>
				</form:form>
			</div>
		</div>
		<div class="row">
			<div class="col-md-1 col-xs-1"><h3>Hotel Name</h3></div>
			<div class="col-md-2 col-xs-2"><h3>Room Number</h3></div>
			<div class="col-md-2 col-xs-2"><h3>Rooms in number</h3></div>
			<div class="col-md-1 col-xs-1"><h3>Price</h3></div>
			<div class="col-md-2 col-xs-2"><h3>Type of bath room</h3></div>
			<div class="col-md-2 col-xs-2"><h3>Type of room</h3></div>
			<div class="col-md-2 col-xs-2"><h3>Options</h3></div>
		</div>
			<c:forEach items="${roomServices}" var="roomService">
				<div class="row">
					<div class="col-md-1 col-xs-1">${roomService.hotelName.name}</div>
					<div class="col-md-2 col-xs-2">${roomService.roomNumber}</div>
					<div class="col-md-2 col-xs-2">${roomService.room}</div>
					<div class="col-md-1 col-xs-1">${roomService.price}</div>
					<div class="col-md-2 col-xs-2">${roomService.typeOfBathRoom.type}</div>
					<div class="col-md-2 col-xs-2">${roomService.typeOfRoom.type}</div>
					<div class="col-md-2 col-xs-2"><a class="btn btn-success" href="/admin/roomService/update/${roomService.id}">update</a>
						<a class="btn btn-danger" href="/admin/roomService/delete/${roomService.id}">delete</a></div>
				</div>
			</c:forEach>
	</div>
	<div class="col-md-2 col-xs-12"></div>
</div>