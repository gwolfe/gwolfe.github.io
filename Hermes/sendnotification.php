<?php // this line loads the library
require('/path/to/twilio-php/Services/Twilio.php');
require('/twilio-twilio-php-9d8bb7d/Services/Twilio.php');

$account_sid = 'ACb3a1fa94119b38e0258caa98efdfd045';
$auth_token = 'd2511242e37d0a46244f42e61385445f';
$client = new Services_Twilio($account_sid, $auth_token);


$client = new Services_Twilio($sid, $token);
$message = $client->account->messages->sendMessage(
  '353768886539', // From a valid Twilio number
  '0872726746', // Text this number
  "Hello monkey!"
);

print $message->sid;

?>
