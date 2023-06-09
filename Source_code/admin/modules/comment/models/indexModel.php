<?php
function getAllComment()
{
	return db_fetch_array("SELECT  
	`tbl_comment`.`id`, 
	`tbl_comment`.`product_id`, 
	`tbl_comment`.`comment`,
	`tbl_comment`.`create_date`, 
	`tbl_customer`.`fullname`, 
	`tbl_customer`.`username`, 
	`products`.`code`,
	`products`.`name`
	FROM `tbl_comment` 
	LEFT JOIN `tbl_customer` 
	ON `tbl_customer`.`id` = `tbl_comment`.`customer_id`
	INNER JOIN `products` 
	ON `products`.`id` = `tbl_comment`.`product_id`");
}

function deleteCommentByID($id)
{
	db_delete("tbl_comment", "`refer` = '$id'");
	return db_delete("tbl_comment", "`id` = '$id'");
}
?>