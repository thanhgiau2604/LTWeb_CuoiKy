<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dblayer.DBConnect"%>
<%@page import="dao.VaoThidao"%>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="vi">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Webiste Thi Trắc Nghiệm Trực Tuyến</title>

	<!-- Bootstrap Core CSS -->
	<link href="file/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- jquery -->
	<script type="text/javascript" src="file/js/jqMenu.js"></script>
	<!-- Custom Fonts -->
	<link href="file/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="file/css/TS_ThongTinDT.css">
</head>
<body>
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container dt" id="idtrangchu">
				<!-- start khung -->
				<div class="khung">
					<button class="nuttt">
						<img src="file/Images/Student.png" alt="avatar" class="ava">
						${sessionScope.tenDN}
					</button>	
					<div class="danhmuctt">
						<a href="TS_ChonDeThi.jsp">Vào Thi</a>
						<a href="TS_TDTT.jsp">Thay Đổi Thông Tin</a>
						<a href="TS_DoiMatKhau.jsp">Đổi Mật Khẩu</a>
						<a href="TrangChu.jsp">Đăng Xuất</a>
					</div>
				</div> <!-- end khung -->

				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<img class="navbar-brand" src="file/Images/logo3.png" alt="" width="70%" height="50px">
				</div>
				
				<div class="collapse navbar-collapse navbar-ex1-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right menu">
						<li ><a class="btnTC" href="#idtrangchu">TRANG CHỦ</a></li>
					    <li ><a class="btnTC" href="TS_ChonDeThi.jsp">VÀO THI</a></li>
						<li ><a class="btnTC" href="TS_LichSuThi.jsp">LỊCH SỬ</a></li>
						<li ><a class="btnTC" href="TS_ThongBao.jsp">THÔNG BÁO</a></li>
						<li ><a class="btnGT" href="#idgioithieu">GIỚI THIỆU</a></li>					
					</ul>
				</div><!-- /.navbar-collapse -->
				<!-- duong ke -->
				<div class="duongke"></div>
			</div> 
		</nav>
		<%
			String TenDN = (String)session.getAttribute("tenDN");
			String MaDT = (String)session.getAttribute("MaDT");
			int LuotThi = (Integer)session.getAttribute("LuotThi");	
			ResultSet rs = new VaoThidao().LayKetQuaThi(TenDN, MaDT, LuotThi);
		%>
				   <!-- nội dung  -->  
		<div class="container">
			<div class="row ttdt text-center">
				<h3>KẾT QUẢ THI</h3>
				<%
					while (rs.next())
					{
				%>
                <p class="ThongtinDT">Đề thi môn:<%=rs.getString(1)%></br>
                	Thời gian đã làm bài: <%=rs.getString(2)%> giây </br>
                	Mã đề thi:<%=rs.getString(3)%> </br>
                	Số câu hỏi:<%=rs.getString(4)%> câu </br>
                	Điểm thi đạt được: <strong style="color: red"><%=rs.getString(5)%></strong> 
                </p>
                <%} %>
			</div>
			<div class="btn btn-default nutlambai"><a href="TS_XemLaiBL.jsp">Xem lại bài làm</a></div> 
			<div class="btn btn-default nutlambai" style="margin-top:0px; background: orange; border: none">
				<a href="TrangChuTS.jsp">Về trang chủ</a></div> 
			
		</div> <!-- end nội dung -->
	  <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
        	<div class="logofooter">
            		<img class="imglogo" src="file/Images/logo3.png" alt="">
            	</div>
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>ĐỊA CHỈ</h3>
                        <p>Số 1, Võ Văn Ngân<br>Thủ Đức, Thành Phố Hồ Chí Minh</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>LIÊN KẾT</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>WEBSITE</h3>
                        <div class="col-xs-3 col-sm-3 col-md-2 col-lg-2"></div>
                        <div class="col-xs-4 col-sm-4 col-md-5 col-lg-5">
                        	<ul class="shortlink">
                        		<li><a href="TrangChuTS.jsp">Trang chủ</a></li>
                        		<li><a href="TrangChuTS.jsp#baidang">Bài đăng</a></li>
                        		<li><a href="TrangChuTS.jsp#gioithieu">Giới thiệu</a></li>
                        		<li><a href="TrangChuTS.jsp#chucnang">Chức năng</a></li>
                        	</ul>
                        </div>
                         <div class="col-xs-4 col-sm-4 col-md-5 col-lg-5">
                         	<ul class="shortlink">
                         		<li><a href="">Câu hỏi</a></li>
                         		<li><a href="">Đề thi</a></li>
                         		<li><a href="">Điểm</a></li>
                         		<li><a href="TS_ThongBao.jsp">Thông báo</a></li>
                         	</ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Our Website 2018
                    </div>
                </div>
            </div>
        </div>
    </footer> <!-- end footer -->
</body>
</html>