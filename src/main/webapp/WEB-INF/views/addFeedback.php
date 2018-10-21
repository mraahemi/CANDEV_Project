<?php

//Block 1
$feedback = "feedback"; //Enter feedback
$host = "localhost://3306"; //Enter the host
$dbase = "heritage"; //Enter the database
$table = "team"; //Enter the table name

//Block 2
$feedback= $_POST['feedback_entered'];

//Block 3
$connection= mysql_connect ($localhost://3306, $root, $root);
if (!$connection)
{
die ('Could not connect:' . mysql_error());
}
mysql_select_db($database, $connection);


//Block 5
mysql_query("INSERT INTO $team (feedback)
VALUES ($feedback)");

//Block 6
echo 'You have been added.';

//Block 7
mysql_close($connection);

?>