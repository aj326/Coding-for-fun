#!/usr/bin/perl
# Ahmed AlJehairan
# ahmed24633@gmail.com
# GitHub: aj326
use v5.10;
use Data::Dumper;	
use autodie;
my @stack;
#######################
package Cat{
	use Moose;

	sub meow{
		my $self = shift;
		say 'Meow!!';
	}
}
my $baby = Cat->new();
$baby->meow();
#Subroutines:
#############

#I/O
####
while(<>){
	chomp;
	
}