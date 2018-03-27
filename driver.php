<?php
require_once "user_template.php"

class driver implements user_template {
	private $from;
	private $to;
	private $date;
	private $time_1;
	private $time_2:
	private $price;
	public function setPrefs($from, $to, $date, $time_1, $time_2, $price) {
		 $this->from = $from;
		 $this->to = $to;
		 $this->date = $date;
		 $this->time_1 = $time_1;
		 $this->time_2 = $time_2;
		 $this->price = $price;
	}
	public function savePrefs(); {
		
	}
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
}

?>