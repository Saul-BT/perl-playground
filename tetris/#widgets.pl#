use strict;
use Curses::UI;

my $ui = Curses::UI->new(
    -color_support  =>  1,
    -mouse_support  =>  0,
    -border         =>  1,
    -debug          =>  0
);

my $parentWindow = $ui->add(
    'parentWindow', 'Window',
    -bfg            => 'green',
    -border         => 1,
    -y              => 1,
);

# Do something with $name xD
# Ej. store info about scores
# my $name = $ui->question(-question => "What's your name?");

sub getShape {

    my @shapes = (
	"##\n##",      # 0
	"#\n#\n#\n#",  # I
	" ##\n## ",    # S
	"## \n ##",    # Z
	"#\n#\n##",    # L
	" #\n #\n##",  # J
	"###\n #",     # T
    );

    $shapes[int(rand(scalar(@shapes)))];
}

my $randShape = getShape();

my $label = $parentWindow->add(
    'mylabel', 'Label',
    -text      => $randShape,
    -bold      => 1,
);

$label->draw();

$ui->set_binding( \&exit_dialog , "\cQ");
$ui->mainloop();
