<?php get_header(); ?>
<?php 	if(!empty($_SESSION['mess'])) 
			{echo " <script type='text/javascript'> alert('Bạn cần đăng nhập trước khi mua hàng!!!');</script>";
			unset($_SESSION['mess']);}
?>

<div id="main-content-wp" class="checkout-page">
	<div class="section" id="breadcrumb-wp">
		<div class="wp-inner">
			<div class="section-detail">
				<ul class="list-item clearfix">
					<li>
						<a href="?page=home" title="">Trang chủ</a>
					</li>
					<li>
						<a href="" title="">Tài khoản</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="wrapper" class="wp-inner clearfix">
	
		
			<form method="post" action="?modules=users&controllers=index&action=login" name="form-checkout">
	
						<div class="section" id="customer-info-wp">
							<div class="section-head">
								<h1 class="section-title">Đăng nhập tài khoản</h1>
							</div>
							
							<div class="section-detail">
									<div class="form-row clearfix">
										<div class="form-col fl-left">
											<label for="fullname">Tên đăng nhập</label>
											<input type="text" name="username" id="fullname" class="form-control">
										</div> 
									</div>
									<div class="form-row clearfix">
										<div class="form-col fl-left">
											<label for="address">Mật khẩu</label>
											<input style="height: 38px;width: 250px;border: 1px solid #cccccc;" type="password" name="password" id="address" class="form-control">
										</div>
									</div>
									<div class="form-row clearfix">
										<div class="form-col fl-left">
											<a href="admin/?modules=users&controllers=index&action=login">Đăng nhập với tư cách QTV</a>
										</div>
									</div>
									<div class="form-row clearfix">
										<div class="form-col fl-left">
											<a href="?modules=users&action=createAccount">Hoặc đăng kí tài khoản tại đây</a>
										</div>
									</div>
							</div>
							<input type="submit" name="btn_submit" id="btn-submit" value="Đăng nhập" style="height: 40px;
																								border-radius: 60px;
																								width: 150px;
																								color: green;
																								border-color: white;
																								color: white;
																								background-color: #48ad48;">
						</div>
	
		   </form>

		</div>
	
		
	
	</div>
	</div>


<?php get_footer(); ?>