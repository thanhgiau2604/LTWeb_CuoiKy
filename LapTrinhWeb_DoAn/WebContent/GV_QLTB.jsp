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
	<!-- jquery -->
	<script type="text/javascript" src="file/js/jqMenu.js"></script>
	<!-- Custom Fonts -->
	<link href="file/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="file/css/GV_QLTB.css">
</head>
<body data-spy="scroll" data-target=".navbar-fixed-top" data-offset="90">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container dt" id="idtrangchu">
				<!-- start khung -->
				<div class="khung">
					<button class="nuttt">
						<img src="file/Images/Teacher.png" alt="avatar" class="ava">
						Nguyen Giau
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
			<div class="qlytb text-center">
				<h3>DANH SÁCH THÔNG BÁO ĐÃ GỬI</h3>
				<div class="btn btn-default nutwrite"><a href="GV_ThemTB.jsp">Thêm thông báo mới</a></div> 
				<div class="row">
					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 col-md-push-2">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Mã thông báo</th>
									<th>Nội dung</th>
									<th>Ngày gửi</th>
									<th>Thao tác</th>
									<th>Thao tác</th>
									<th>Thao tác</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>TB01</td>
									<td>Thông báo V/v thi THPT quốc gia 2019</td>
									<td>18/3/2017</td>
									<td><div class="btn btn-success nutXem"><a href="#"">Xem</a></div></td>
									<td><div class="btn btn-warning nutSua"><a href="#"">Sửa</a></div></td>
									<td>
										<div class="btn btn-danger nutXoa" data-toggle="modal" data-target="#ModalXoa"
										><a href="#"">Xóa</a></div>
									</td>
								</tr>
								<tr class="chan">
									<td>TB02</td>			
									<td>Thông báo V/v bảo trì hệ thống vào ngày 20/9/2018</td>
									<td>2/1/2018</td>
									<td><div class="btn btn-success nutXem"><a href="#"">Xem</a></div></td>
									<td><div class="btn btn-warning nutSua"><a href="#"">Sửa</a></div></td>
									<td>
										<div class="btn btn-danger nutXoa" data-toggle="modal" data-target="#ModalXoa"
										><a href="#"">Xóa</a></div>
									</td>
								</tr>
								<tr>
									<td>TB03</td>
									<td>Kiểm tra lại thông tin tài khoản</td>
									<td>3/7/2018</td>
									<td><div class="btn btn-success nutXem"><a href="#"">Xem</a></div></td>
									<td><div class="btn btn-warning nutSua"><a href="#"">Sửa</a></div></td>
									<td>
										<div class="btn btn-danger nutXoa" data-toggle="modal" data-target="#ModalXoa"
										><a href="#"">Xóa</a></div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>


           <!--  thong bao da nhan tu admin-->
			<div class="qlytbnhan text-center">
				<h3>DANH SÁCH THÔNG BÁO ĐÃ NHẬN</h3> 
				<div class="row">
					<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 col-md-push-2">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Mã thông báo</th>
									<th>Nội dung</th>
									<th>Thao tác</th>
									<th>Ngày nhận</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>TB01</td>
									<td>Thông báo V/v thi THPT quốc gia 2019</td>					
									<td><div class="btn btn-success nutXem"><a href="#"">Xem</a></div></td>
									<td>18/3/2017</td>
								</tr>
								<tr class="chan">
									<td>TB02</td>			
									<td>Thông báo V/v bảo trì hệ thống vào ngày 20/9/2018</td>
									
									<td><div class="btn btn-success nutXem"><a href="#"">Xem</a></div></td>
									<td>2/1/2018</td>
								</tr>
								<tr>
									<td>TB03</td>
									<td>Kiểm tra lại thông tin tài khoản</td>			
									<td><div class="btn btn-success nutXem"><a href="#"">Xem</a></div></td>
									<td>3/7/2018</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- end -->


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


      <!-- modal xoa -->
    <div class="modal fade" id="ModalXoa" tabindex="-1" role="dialog" aria-labelledby="ModalXoaLabel" aria-hidden="true">
    	<div class="modal-dialog" role="document">
    		<div class="modal-content">
    			<div class="modal-header">
    				<h5 class="modal-title" id="ModalXoaLabel">Thông báo</h5>
    				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
    					<span aria-hidden="true">&times;</span>
    				</button>
    			</div>
    			<div class="modal-body">
    				<p>Bạn có chắc chắn muốn xóa bài đăng này không?</p>
    			</div>
    			<div class="modal-footer">
    				<button type="button" class="btn btn-secondary" data-dismiss="modal">Có</button>
    				<button type="button" class="btn btn-primary" data-dismiss="modal">Không</button>
    			</div>
    		</div>
    	</div>
    </div>
</body>
</html>