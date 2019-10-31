use strict;
use Curses::UI;

my $ui = Curses::UI->new(
    -color_support  =>  1,
    -mouse_support  =>  0,
    -border         =>  1,
    -debug          =>  0
);

my $co = $ui->color(); # Or $Curses::UI::color_object

# Defining custom colors
$co->define_color('purple', 706, 86, 949);
$co->define_color('orange', 871, 541, 8);

my @colors = $co->get_colors();


my $root_window = $ui->add(
    'rootWindow', 'Window',
    -bfg            => 'green',
    -border         => 1,
    -y              => 1,
);

my $tetris_window = $root_window->add(
    'nextShapeWindow', 'Window',
    -bfg            => 'purple',
    -border         => 1,
    -centered       => 1,
    -height         => $root_window->height,
    -width          => $root_window->width / 3,
);

# Do something with $name xD
# Ex. store info about scores
# my $name = $ui->question(-question => "What's your name?");

sub get_shape_props {

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

my %rand_shape_entry = %{get_shape_props()};

my $label = $tetris_window->add(
    'tetrisShape', 'Label',
    -text      => $rand_shape_entry{'item'},
    -fg        => $rand_shape_entry{'color'},
    -bold      => 1,
);

$label->draw();

$ui->set_binding( \&exit_dialog , "\cQ");

$ui->mainloop();
