 #!/usr/bin/perl

use strict;
use warnings;
use Getopt::Long;

my $fh;
my $fh2;
my $iteration = 300; # cycle iteration
my $width = 4; #bus width
GetOptions{"size=i" => \$iteration};


open ( $fh, ">", "clock_b.txt");
open ($fh2,">","io_b.txt");


#print clock antecedents

for (my $i = 0; $i < $iteration;$i++) {
	my $j = $i +1;
	if($i % 2 == 0) {
		print $fh "\(bT\,\"clk\"\,clk\,$i,$j)\,";
	}
	else {
		print $fh "\(bT\,\"clk\"\,clk\,$i\,$j)\,";
	}
}


# antecedent
print $fh2 "\/\/ant\n";

for (my $i = 0; $i < $width;$i++) {
	print $fh2 "\(T,\"X\[$i\]\",F,0,1\),";	
	print $fh2 "\(T,\"Y\[$i\]\",F,0,1\),";	
}
print $fh2 "\n";

# weaklist
print $fh2 "\/\/weaklist\n";
for (my $i = 0; $i < $width;$i++) {
	print $fh2 "\(T,\"X\[$i\]\",0,1\),";	
	print $fh2 "\(T,\"Y\[$i\]\",0,1\),";	
}
print $fh2 "\n";

# trace
#for (my $i = 0; $i < $iteration;$i++) {
#	print $fh2 "get_trace_val diag \"prop\" $i\;\n";
#}





