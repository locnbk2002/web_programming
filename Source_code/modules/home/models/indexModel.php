<?php





function getAllSmartPhone(){

	return db_fetch_array("SELECT * FROM `tbl_product` WHERE `id_category` = '13'  LIMIT 8");
}




function getAllTablet(){

	return db_fetch_array("SELECT * FROM `tbl_product` WHERE `id_category` = '14' LIMIT 8");

}





function getAllLaptop(){

	return db_fetch_array("SELECT * FROM `tbl_product` WHERE `id_category` = '12' LIMIT 8");

}





function getAllHot(){

	return db_fetch_array("SELECT * FROM `products` WHERE `quantity` > '9' ");

}





function getAllSlider(){
	
	return db_fetch_array("SELECT * FROM `tbl_slider`");

}

function getAllFJeans() {
	return db_fetch_array("SELECT * FROM `products` WHERE cat_id=15 LIMIT 4");
}

function getAllFTShirts() {
	return db_fetch_array("SELECT * FROM `products` WHERE cat_id=16 LIMIT 4");
}

function getAllMTShirts() {
	return db_fetch_array("SELECT * FROM `products` WHERE cat_id=17 LIMIT 4");
}

function getAllMJeans() {
	return db_fetch_array("SELECT * FROM `products` WHERE cat_id=18 LIMIT 4");
}