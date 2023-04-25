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
	$fjeans = getAllFJeans();
	$ftshirts = getAllFTShirts();
	$mtshirts = getAllMTShirts();
	$mjeans = getAllMJeans();

	$_SESSION['product_hot'] = $hots;
	$data = [ $smartphones, $tablets, $laptops, $hots, $sliders, $fjeans, $ftshirts, $mtshirts, $mjeans];
	load_view('index',$data);
}




function addAction() {

}




function editAction() {

}
