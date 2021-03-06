<%@page import="model.Log"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  
</head>
<body style="background-color: #f4f5f8">


<div class="container">
	<div class="card shadow mt-5">
	<!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h4 class="m-0 font-weight-bold text-primary">Log</h4>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                
		                <table class="table">
					    <thead class="thead-dark">
					      <tr>
					        <th>Id log</th>
					        <th>Name log </th>
					        <th>Comment</th>
					        <th>STATUS</th>
					        <th>URL local</th>
					        <th>Time_download </th>
					        <th>Time_upload Staging </th>
					        <th>Time_upload WareHouse</th>
					      </tr>
					    </thead>
					    
					    <%--  --%>
					   <tbody>
					    <% ArrayList<Log> logs = (ArrayList) request.getAttribute("logs");%>
					    <% for(Log item : logs) { %>
					      <tr>
					      <%-- lay id log --%>
					      	<th><%= item.getId() %></th>
					      	<%-- lay name log --%>	
					      	<th><%=item.getNameLog() %></th>
					      	<%--lay comment --%>
					      	<th><%=item.getComment() %></th>
					      	<%--lay status --%>
					      	<th><%=item.getStatus() %></th>
					      	<% if(item.getStatus().equals("DOWNLOAD_SUCCESS")) { %>
					      		<th class="text-success"><%= item.getStatus() %></th>
					      	<% } else if(item.getStatus().equals("UPLOAD_STAGING")) {%>
					      		<th class="text-warning"><%= item.getStatus() %></th>
					      	<% } else { %>
					      		<th class="text-primary"><%= item.getStatus() %></th>
					      	<% } %>
					      	
					   
					     
					      	
					      	
					      	
					      	<%-- lay url local --%>
					      	<th><%= item.getUrlLocal() %></th>
					      	<%--lay time_download--%>
					      	<th><%=item.getTime_download() %> </th>
					      	<%--lay time_upload Staging --%>
					      	<th><%=item.getTime_uploadStraging() %></th>
					      	<%--lay time_upload WareHouse --%>
					      	<th><%= item.getTime_uploadWarehouse() %></th>
					      </tr>
					     <% } %>
					    </tbody>
					    
					  </table>
                </div>
               
    </div>
              
</div>
	
	<script type="text/javascript">
	
	$(document).ready(function() {
		  setInterval(function() {
		    cache_clear()
		  }, 1000);
		});

		function cache_clear() {
		  window.location.reload(true);
		  // window.location.reload(); use this if you do not remove cache
		}
	</script>
	
</body>
</html>