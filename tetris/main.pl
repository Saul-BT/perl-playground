use strict;
use Curses::UI;

my $ui = Curses::UI->new(
    -color_support  =>  1,
    -mouse_support  =>  0,
    -border         =>  1,
    -debug          =>  0
);

my $co = $Curses::UI::color_object;

# Defining custom colors
$co->define_color('purple', 706, 86, 949);
$co->define_color('orange', 871, 541, 8);

my @colors = $co->get_colors();


my $parentWindow = $ui->add(
    'parentWindow', 'Window',
    -bfg            => 'green',
    -border         => 1,
    -y              => 1,
);

# Do something with $name xD
# Ex. store info about scores
# my $name = $ui->question(-question => "What's your name?");

sub getShapeProps {

    my @shapes = (
	{'item'  => "##\n##",      # 0
	 'color' => 'yellow'},
        {'item'  => "#\n#\n#\n#",  # I
	 'color' => 'blue'},
        {'item'  => " ##\n## ",    # S
	 'color' => 'red'},
        {'item'  => "## \n ##",    # Z
	 'color' => 'green'},
        {'item'  => "#\n#\n##",    # L
	 'color' => 'orange'},
        {'item'  => " #\n #\n##",  # J
	 'color' => 'magenta'},
        {'item'  => "###\n #",     # T
         'color' => 'purple'},
    );

    $shapes[rand(@shapes)];
}

my %randShapeEntry = %{getShapeProps()};

my $label = $parentWindow->add(
    'tetrisShape', 'Label',
    -text      => $randShapeEntry{'item'},
    -fg        => $randShapeEntry{'color'},
    -bold      => 1,
);

$label->draw();

$ui->set_binding( \&exit_dialog , "\cQ");
$ui->mainloop();
