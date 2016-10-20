#!/usr/bin/perl

use 5.010;
use strict;
use warnings;
use File::Find;
my $folder='/home/';
my $find = 'leiyang|ly|yanglei2'; 
find(sub{
	my $fn = $_;
	if($fn =~ /^.{2,20}$/)
	{
     		open(FILE, $fn); #|| die("can't open datafile: $!");
     		while (<FILE>) 
     		{
         		if ($_ =~ /$find/)
          		{
             			print "$&\t";
             			print "$fn\n\n";
          		}
     		}
	}
	},$folder);

