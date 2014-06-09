package Vertex{
	use Moose;
	has 'name' => (
		is => 'ro',
		isa => 'Str'
		);
	has 'first' => (
		is => 'ro',
		isa => 'Str'
		);
	has 'last' => (
		is => 'ro',
		isa => 'Str'
		);
	has 'wasVisited' => (
		is => 'rw',
		isa => 'Int');
	
}
1;