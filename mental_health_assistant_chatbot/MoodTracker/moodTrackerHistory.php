<?php
	
		$email = $_POST["email"];
		
		require_once 'connect.php';

		$sql = "SELECT date, mood, comment from moodtracker WHERE userID = (SELECT (userID) FROM user where email ='".$email."')";
		$db_data = array();
	 
		$result = $db->query($sql);
		if($result->num_rows > 0){
			while($row = $result->fetch_assoc()){
				$db_data[] = $row;
			}
			// Send back the complete records as a json
			echo json_encode($db_data);
		}else{
			echo "Error";
		}
?>