print "What's your name? ";
$name = <STDIN>;
chomp($name);

print <<WELCOME;
Hi $name, Where are you from?
WELCOME

$place = <STDIN>;
chomp($place);

print <<GOODBYE;
Oh, you are $name from $place...
I hear that $place is a beautiful place.
It's nice meet people like you $name.
I hope to see you soon :)

Bye $name.
GOODBYE
