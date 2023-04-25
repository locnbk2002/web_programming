<?php

function construct() {
	load_model('index');
}

function indexAction() {


}

function addAction() {
	$categorys = getAllCategory();
	$brands = getAllBrand();
	$data = [ $categorys,$brands ];
	$cat_id;
	$brand_id;
	$name;
	$code;
	$price;
	$quantity;
	$status;
	$description;
	$image;
	$err = array();
	if(!empty($_POST['btn_submit'])){

		if(!empty($_POST['cat_id'])){
			$cat_id = $_POST['cat_id'];
		}else{
			$err['cat_id'] = "cat_id không được rỗng";		
		}

		if(!empty($_POST['brand_id'])){
			$brand_id = $_POST['brand_id'];
		}else{
			$err['brand_id'] ="brand_id không được rỗng";		
		}

		if(!empty($_POST['name'])){
			$name = $_POST['name'];
		}else{
			$err['name'] ="name không được rỗng";		
		}

		if(!empty($_POST['code'])){
			$code = $_POST['code'];
		}else{
			$err['code'] ="code không được rỗng";		
		}

		if(!empty($_POST['price'])){
			$price = $_POST['price'];
		}else{
			$err['price'] ="price không được rỗng";		
		}


		if(!empty($_POST['quantity'])){
			$quantity = $_POST['quantity'];
		}else{
			$err['quantity'] ="quantity không được rỗng";
		}

		if(!empty($_POST['status'])){
			$status = $_POST['status'];
		}else{
			$err['status'] ="status không được rỗng";
		}

		if(!empty($_POST['description'])){
			$description = $_POST['description'];
		}else{
			$err['description'] ="description không được rỗng";
		}

		if(!empty($_POST['detail'])){
			$description = $_POST['detail'];
		}else{
			$err['detail'] ="detail không được rỗng";
		}

		////// ảnh
		$target_dir = "public/uploads/";
		$target_file = $target_dir . basename($_FILES["image"]["name"]);
		$target_dir_web_uploads = "../public/uploads/";
		$target_file_web_uploads = $target_dir_web_uploads . basename($_FILES["image"]["name"]);
		$uploadOk = 1;
		$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

		if(isset($_POST["submit"])) {
		  $check = getimagesize($_FILES["image"]["tmp_name"]);
		  if($check !== false) {
		    $uploadOk = 1;
		  } else {
		    $uploadOk = 0;
		  }
		}

		if (file_exists($target_file)) {
		  $uploadOk = 0;
		}

		if ($_FILES["image"]["size"] > 200000000) {
		  $uploadOk = 0;
		}

		if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
		&& $imageFileType != "gif" ) {
		  $uploadOk = 0;
		}

		if ($uploadOk == 0) {
		} else {
		  if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
			if (copy($target_file, $target_file_web_uploads)) {
				$image = $target_dir. basename( $_FILES["image"]["name"]);
			}
		  } 
		}
		if(empty($image)){
			$err['image'] = "image không được rỗng";
		}
		if(empty($err)){
		$create_date = date("d/m/Y",time());
		$res = [
			'cat_id ' =>$cat_id ,
			'brand_id ' =>$brand_id ,
			'name' =>$name,
			'code' =>$code,
			'price' =>$price,
			'quantity' => $quantity,
			'status' => $status,
			'detail' => $detail,
			'image' => $image,
			'description' => $description

		];
			if(insert_product($res)){
				
	        	echo " <script type='text/javascript'> alert('Thêm mới thành công');</script>";
			}else{
				
	        	echo " <script type='text/javascript'> alert('Thêm mới danh mục sản phẩm thất bại');</script>";
			}

		}
		else{
			
	        echo " <script type='text/javascript'> alert('Thêm mới danh mục sản phẩm thất bại');</script>";
		}

	}

	load_view('add',$data);
}

function listAction() {

	$data_tmp = getAllProduct();

	for ($i=0; $i <count($data_tmp) ; $i++) {
		
		$data_tmp[$i]['category'] = get_category_by_id($data_tmp[$i]['cat_id']);
		$data_tmp[$i]['brand']  = get_brand_by_id($data_tmp[$i]['brand_id']) ;
	};

	//phân trang//////////////////////////////////////////////////
	//$id_cat = $_GET['id_cat'];
	// $name = getNameCatById($id_cat);
	// $data_tmp = getAllByIDCat($id_cat);
	// $id =$id_cat;
	$page;
	if(!empty($_GET['page'])){
		$page = $_GET['page'];
	}else{
		$page =1;
	}
	
	$numProduct = count($data_tmp);
	$productOnPage = 5;
	$num = ceil($numProduct/$productOnPage);
	if(!empty($_GET['page']) && $_GET['page']>$num){
		$page =$num;
	}
	$start = ($page - 1) * $productOnPage;
	$res =[];
	for ($i=$start; $i < $start+$productOnPage; $i++) { 
		if(isset($data_tmp[$i]))
        $res[] = $data_tmp[$i];
	};

	$data = [$res, $num, $page];
	////////////////////////////////////////////////////////////////
	load_view('list',$data);
}


function deleteAction() {

	$id = $_GET['id'];
	delete_product_by_id($id);
	header('location:?modules=products&controllers=index&action=list');
}

function editAction() {
	$id = $_GET['id'];
	$data = get_product_by_id($id);
	load_view('show',$data);
}

function updateAction() {
	$id = $_GET['id'];
	$image;
	$data = get_product_by_id($id);
	$data1 = array();
	if(!empty($_POST['btn_submit'])){

		if(empty($_POST['name'])){
			$data1['name'] = $data[0]['name'];
		}else{
			$data1['name'] = $_POST['name'];
		}

		if(empty($_POST['code'])){
			$data1['code'] = $data[0]['code'];
		}else{
			$data1['code'] = $_POST['code'];
		}

		if(empty($_POST['price'])){
			$data1['price'] = $data[0]['price'];
		}else{
			$data1['price'] = $_POST['price'];
		}

		if(empty($_POST['quantity'])){
			$data1['quantity'] = $data[0]['quantity'];
		}else{
			$data1['quantity'] = $_POST['quantity'];
		}

		if(empty($_POST['status'])){
			$data1['status'] = $data[0]['status'];
		}else{
			$data1['status'] = $_POST['status'];
		}

		if(empty($_POST['description'])){
			$data1['description'] = $data[0]['description'];
		}else{
			$data1['description'] = $_POST['description'];
		}
		//// anh
		$target_dir = "public/uploads/";
		$target_file = $target_dir . basename($_FILES["image"]["name"]);
		$uploadOk = 1;
		$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

		if(isset($_POST["submit"])) {
		  $check = getimagesize($_FILES["image"]["tmp_name"]);
		  if($check !== false) {
		    $uploadOk = 1;
		  } else {
		    $uploadOk = 0;
		  }
		}

		if (file_exists($target_file)) {
		  $uploadOk = 0;
		}

		if ($_FILES["image"]["size"] > 200000000) {
		  $uploadOk = 0;
		}

		if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
		&& $imageFileType != "gif" ) {
		  $uploadOk = 0;
		}

		if ($uploadOk == 0) {

		} else {
		  if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
		    $image = $target_dir. basename( $_FILES["image"]["name"]);
		  } else {
		  }
		}

		if(!empty($image)){
			$data1['image'] = $image;
		}else{
			$data1['image'] = $data[0]['image'];
		}



	}
	if(update_product_by_id($id,$data1)){
		$res = get_product_by_id($id);
		load_view('show',$res);
            echo " <script type='text/javascript'> alert('Cập Nhật Thành Công');</script>";
	}else{
			load_view('show',$data);
            echo " <script type='text/javascript'> alert('Cập Nhật Thất Bại');</script>";
	}
}