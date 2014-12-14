// this line loads the library
require('/path/to/twilio-php/Services/Twilio.php');

$account_sid = 'ACb3a1fa94119b38e0258caa98efdfd045';
$auth_token = 'd2511242e37d0a46244f42e61385445f';
$client = new Services_Twilio($account_sid, $auth_token);

$client->account->messages->create(array(
	'To' => "0872726746",
	'From' => "+353768886539",
));
