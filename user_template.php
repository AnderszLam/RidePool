<?php //interface implemented by rider and driver classes
interface user_template {
	public function setPrefs($from, $to, $date, $time_1, $time_2, $price, $seats); //setter function
	public function getFrom(); //below are getter functions
	public function getTo();
	public function getDate();
	public function getTime1();
	public function getTime2();
	public function getPrice();
	public function getSeats();
	
}
?>