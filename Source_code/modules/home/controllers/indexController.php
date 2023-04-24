<?php


function construct() {

	load_model('index');	

}





function indexAction() {
	
	$smartphones = getAllSmartPhone();
	$tablets = getAllTablet();
	$laptops = getAllLaptop();
	$hots = getAllHot();
	$sliders = getAllSlider();
	$jeans = getAllJeans();
	$tshirts = getAllTShirts();

	$_SESSION['product_hot'] = $hots;
	$data = [ $smartphones, $tablets, $laptops, $hots, $sliders, $jeans, $tshirts];
	load_view('index',$data);
}




function addAction() {

}




function editAction() {

}
