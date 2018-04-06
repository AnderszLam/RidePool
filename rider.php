<?php
require_once('user_template.php');
require_once('main.php');

class rider extends main_operations implements user_template { //main_operation contains the search and post functions, user_template is the interface containing the setter and getters
	private $from;
	private $to;
	private $date;
	private $time_1;
	private $time_2;
	private $price;
	private $seats;
	public function setPrefs($from, $to, $date, $time_1, $time_2, $price, $seats) { //setter for all private variables
		 $this->from = $from;
		 $this->to = $to;
		 $this->date = $date;
		 $this->time_1 = $time_1;
		 $this->time_2 = $time_2;
		 $this->price = $price;
		 $this->seats = $seats;
	}
	//below are getters for the class
	public function getFrom() { 
		return $this->from;
	}
	public function getTo() {
		return $this->to;
	}
	public function getDate() {
		return $this->date;
	}
	public function getTime1() {
		return $this->time_1;
	}
	public function getTime2() {
		return $this->time_2;
	}
	public function getPrice() {
		return $this->price;
	}
	public function getSeats() {
		return $this->seats;
	}
}

?>