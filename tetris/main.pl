use strict;
use Curses::UI;

my $c = Curses::UI::Color->new(
    -default-colors => 1,
);

$c->define_color('purple', 900, 220, 10);

my $colors = join '-', $c->get_colors();

# A way to add defined colors to my UI?
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
    #-text      => $colors,
    -text      => $randShapeEntry{'item'},
    -fg        => $randShapeEntry{'color'},
    -bold      => 1,
);

#$label->set_color_fg('purple');
$label->draw();

$ui->set_binding( \&exit_dialog , "\cQ");
$ui->mainloop();
