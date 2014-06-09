#!/usr/bin/perl
# Ahmed AlJehairan
# ahmed24633@gmail.com
# GitHub: aj326
use v5.10;
use Data::Dumper;	
use lib '/home/ahmed/Dropbox/Code/perl';
use Vertex;
use autodie;
my @stack;
#######################
package Graph{
	my @list;
	my @edges;
	my %connectedVectors;
	my $numOfVectors = 0;
	sub build(){
		my $self = shift;
		# say 'running build';
		$numOfVectors = @_;
		$adjM[$numOfVectors][$numOfVectors] = 0;
		foreach (@_){
		$l1 = substr $_, 0,1;
		$l2 = substr $_, -1,1;	
			my $v = Vertex->new(name => $_,
								first => $l1,
								last => $l2,
								wasVisited => 0);
			push @list, $v;
		}
	}
	sub getNumOfV(){
		return $numOfVectors;
	}
	sub connect(){
		for($i = 0; $i<@list-1; $i++){
			for ($j=1; $j<@list-1;$j++){
				say $i, $j;
				if (($list[$i]->first eq $list[$j]->last) or ($list[$i]->last eq $list[$j]->first)){
					# say $list[$i]->first , $list[$i]->last;
					push @edges, $list[$j];
					say $list[$j]->name;
				}
			}
			$connectedVectors{$list[$i]->name} = [@edges];
			say ($edges[0]->name);
			@edges = ();
		}
		# say @{$connectedVectors{'asd'}};
	}
}1;
$g = Graph;
$g->build(qw(asd ded dem));
# say $g->getNumOfV();
$g->connect();