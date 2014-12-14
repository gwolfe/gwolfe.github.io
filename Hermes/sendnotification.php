<?php // this line loads the library
require "Twilio.php";



$account_sid = 'ACb3a1fa94119b38e0258caa98efdfd045';
$auth_token = 'd2511242e37d0a46244f42e61385445f';


$client = new Services_Twilio($account_sid, $auth_token);

$client->account->messages->create(array(
	'From' => "+353768886539",
    'To' => "+353872726746",
    'Body' => "Hello"
));


print $message->sid;

?>
