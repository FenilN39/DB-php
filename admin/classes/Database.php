<?php

/**
 * 
 */
class Database
{
	
	private $con;
	public function connect(){
		$this->con = new Mysqli("localhost:3306", "kamas1_login", "Texas@123456", "kamas1_ecommerceapp");
		return $this->con;
	}
}

?>