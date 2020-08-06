<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
                  <h4 class="m-0 font-weight-bold text-primary">Nhập config</h4>
                  <a class="btn btn-link" href="<c:url value='/viewLog'/>">Xem log</a>
                </div>
                <!-- Card Body -->
                <div class="card-body">
               
                  <form action=" <c:url value='insert'/>">
				    <%--1. nhap id config --%>
				    <div class="form-group">
				      <label for="idconfig">Nhập ID Config:</label>
				      <input type="text" class="form-control" id="idconfig"  name="idconfig" required="required">
				    </div>
				    <%--2. nhap name config --%>
				    <div class="form-group">
				      <label for="nameconfig">Nhập Name Config:</label>
				      <input type="text" class="form-control" id="nameconfig" name="nameconfig">
				    </div>
				    <%--3. nhap host name --%>
				    <div class="form-group">
				      <label for="hostname">Nhập Host name:</label>
				      <input type="text" class="form-control" id="hostname" name="hostname">
				    </div>
				    <%--4. nhap port --%>
				    <div class="form-group">
				      <label for="port">Nhập Port:</label>
				      <input type="text" class="form-control" id="port" name="port">
				    </div>
				    <%--5. nhap username Account --%>
				    <div class="form-group">
				      <label for="username">Nhập User name Account:</label>
				      <input type="text" class="form-control" id="usernameaccount" name="username">
				    </div>
				    <%--6. nhap password --%>
				    <div class="form-group">
				      <label for="password">Nhập Password Account:</label>
				      <input type="text" class="form-control" id="password" name="password">
				    </div>
				    <%--7. nhap file format --%>
				    <div class="form-group">
				      <label for="fileformat">Nhập File Format:</label>
				      <input type="text" class="form-control" id="fileformat" name="fileformat">
				    </div>
				    <%--8. nhap remote dir --%>
				    <div class="form-group">
				      <label for="remoteDir">Nhập Remote dir:</label>
				      <input type="text" class="form-control" id="remotedir" name="remotedir">
				    </div>
				    <%--9. nhap local dir --%>
				    <div class="form-group">
				      <label for="localDir">Nhập Local dir:</label>
				      <input type="text" class="form-control" id="localdir" name="localdir">
				    </div>
				    <%--10. nhap name DB control --%>
				    <div class="form-group">
				      <label for="nameDBcontrol">Nhập Name_Database_Control:</label>
				      <input type="text" class="form-control" id="namedbcontrol" name="namedbcontrol">
				    </div>
				    <%--11. nhap name table config --%>
				    <div class="form-group">
				      <label for="nameTBconfig">Nhập Name_table_config:</label>
				      <input type="text" class="form-control" id="nametbconfig" name="nametbconfig">
				    </div>
				    <%--12 nhap name table log --%>
				    <div class="form-group">
				      <label for="nameTBlog">Nhập Name_table_logs:</label>
				      <input type="text" class="form-control" id="nametblog" name="nametblog">
				    </div>
				    <%--13. nhap name DB staging --%>
				    <div class="form-group">
				      <label for="nameDB">Nhập Name_Database_Staging:</label>
				      <input type="text" class="form-control" id="namedbstaging" name="namedbstaging">
				    </div>
				    <%--14. nhap name table staging --%>
				    <div class="form-group">
				      <label for="nameTB">Nhập Name_table_staging:</label>
				      <input type="text" class="form-control" id="nametbstaging" name="nametbstaging">
				    </div>
				    <%--15. nhap name DB warehouse --%>
				    <div class="form-group">
				      <label for="nameDB">Nhập Name_Database_Warehouse:</label>
				      <input type="text" class="form-control" id="namedbwarehouse" name="namedbwarehouse">
				    </div>
				    <%--16. nhap name table warehouse --%>
				    <div class="form-group">
				      <label for="nameTB">Nhập Name_table_warehouse:</label>
				      <input type="text" class="form-control" id="nametbwarehouse" name="nametbwarehouse">
				    </div>
				    <button type="submit" class="btn btn-primary">Gửi</button>
				  </form>
              </div>
    </div>
              
</div>
	
	
</body>
</html>