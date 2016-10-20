#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use File::Find;
my $folder='/home/';
find(sub{
	local $fn = $_;
	if($fn =~ /^.{2,20}$/)
	{
		print "$fn\n";
	}
	
	},$folder);


# opendir(DIR, $folder);
# @files = readdir(DIR);


# print "====start=======\n\n";

# foreach $fn (@files)
# {
# my $find = 'leiyang|ly|yanglei2';

# if($fn =~ /^.{2,20}$/)
# {
    # my $fullname = "${folder}/${fn}";
    # #print "$fullname\n\n";

    # open(FILE, $fullname); #|| die("can't open datafile: $!");
    # while (<FILE>) 
    # {
        # if ($_ =~ /$find/)
         # {
            # print "$&\t";
            # print "$fullname\n\n";
         # }
    # }
    # #print "\n\n";
# }

 # } 

# closedir DIR;
print "====end=======\n\n";