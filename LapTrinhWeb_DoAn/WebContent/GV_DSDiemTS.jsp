<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<script type="text/javascript" src="file/js/jqMenu.js"></script>
	<!-- Custom Fonts -->
	<link href="file/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="file/css/GV_DSDiemTS.css">
</head>
<body data-spy="scroll" data-target=".navbar-fixed-top" data-offset="90">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container dt" id="idtrangchu">
				<!-- start khung -->
				<div class="khung">
					<button class="nuttt">
						<img src="file/Images/Teacher.png" alt="avatar" class="ava">
						luyen tran
					</button>	
					<div class="danhmuctt">
						<a href="GV_ThayDoiTT.jsp">Thay Đổi Thông Tin</a>
						<a href="GV_DoiMatKhau.jsp">Đổi Mật Khẩu</a>
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
						<li ><a class="btnTC" href="TrangChuGV.jsp">TRANG CHỦ</a></li>
						<li ><a class="btnTC" href="GV_QLCauHoi.jsp">QL CÂU HỎI</a></li>
						<li ><a class="btnTC" href="GV_QLDeThi.jsp">QL ĐỀ THI</a></li>
						<li ><a class="btnTC" href="GV_QLDiemTS.jsp">QL ĐIỂM</a></li>
						<li ><a class="btnTC" href="GV_QLTB.jsp">QL THÔNG BÁO</a></li>
						<li ><a class="btnTC" href="GV_NhanPhanHoi.jsp">PHẢN HỒI</a></li>
						<li ><a class="btnGT" href="TrangChuGV.jsp#gioithieu">GIỚI THIỆU</a></li>					
					</ul>
				</div><!-- /.navbar-collapse -->
				<!-- duong ke -->
				<div class="duongke"></div>
			</div> 
		</nav>

		<div class="container">
		<div class="qlyd text-center">
			<h3>DANH SÁCH ĐIỂM THÍ SINH</h3>
			<h4>Mã đề thi: HIS02</h4>
			<h4>Đề thi: Khảo sát môn lịch sử</h4>
			<h4>Thời gian làm bài: 12 phút</h4>
			<div class="row">
				<div class="col-xs-0 col-sm-0 col-md-1 col-lg-1"></div>
				<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
					<h4 class="chu pull-left">Lọc</h4>
					<div class="dr dropdown pull-left">
						<button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown">Lọc điểm
							<span class="caret"></span></button>
							<ul class="dropdown-menu">
								<li><a href="#">Điểm cao nhât</a></li>
								<li><a href="#">Điểm thấp nhât</a></li>
								<li><a href="#">Trên trung bình</a></li>
								<li><a href="#">Dưới trung bình</a></li>
								<li><a href="#">Xuất sắc</a></li>
								<li><a href="#">Giỏi</a></li>
								<li><a href="#">Khá</a></li>
								<li><a href="#">Trung bình</a></li>
							</ul>
						</div>
						<form class="sr example" action="" style="margin:auto;max-width:300px">
							<input type="text" placeholder="Search.." name="search2">
							<button class="nutsearch"><i class="fa fa-search"></i></button>
						</form>
						
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Tên đăng nhập</th>
									<th>Họ và tên</th>
									<th>Điểm</th>
									<th>Hạng</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Anguyen123</td>
									<td>Nguyễn Thành A</td>
									<td>8</td>
									<td>02</td>
								</tr>
								<tr class="chan">
									<td>tuyetlee</td>
									<td>Lê thị hồng Tuyết</td>
									<td>10</td>
									<td>01</td>
								</tr>
								<tr>
									<td>phamkhang</td>
									<td>Phạm Minh Khang</td>
									<td>8</td>
									<td>02</td>
								</tr>
								<tr class="chan">
									<td>hanhnguyen56</td>
									<td>Nguyễn Thị Hồng Hạnh</td>
									<td>06</td>
									<td>04</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>			
       <!-- end table -->


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
                        		<li><a href="TrangChuGV.jsp">Trang chủ</a></li>
                        		<li><a href="TrangChuGV.jsp#baidang">Bài đăng</a></li>
                        		<li><a href="TrangChuGV.jsp#gioithieu">Giới thiệu</a></li>
                        		<li><a href="TrangChuGV.jsp#chucnang">Chức năng</a></li>
                        	</ul>
                        </div>
                         <div class="col-xs-4 col-sm-4 col-md-5 col-lg-5">
                         	<ul class="shortlink">
                         		<li><a href="GV_QLCauHoi.jsp">Câu hỏi</a></li>
                         		<li><a href="GV_QLDeThi.jsp">Đề thi</a></li>
                         		<li><a href="GV_QLDiemTS.jsp">Điểm</a></li>
                         		<li><a href="GV_QLTB.jsp">Thông báo</a></li>
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