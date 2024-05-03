#! /usr/bin/perl -w
# vim:et sts=4 sw=4
#
# This script updates the Vim patch level in version.h with information
# from version.c.
#

use strict;

# Read patch level from version.c
open VERSION_C, "<version.c"        or die "Cannot open version.c";
my $found = 0;
while (<VERSION_C>) {
    if (/Add new patch number below this line/) {
        $found = 1;
        last;
    }
}
$found or die "Version information not found";
my $line;
$line = <VERSION_C>;  # Skip a line
$line = <VERSION_C>;  # This is the line we want
$line =~ s/,//;
my $ver = int($line);
close VERSION_C;

# Read all content in version.h
open VERSION_H, "<version.h"        or die "Cannot open version.h";
binmode VERSION_H;
my @lines = <VERSION_H>;
close VERSION_H;

# Check patch level and update it
my $need_update = 1;
foreach (@lines) {
    if (/VIM_VERSION_PATCHLEVEL_STR.*"$ver"/) {
        $need_update = 0;
        last;
    }
    if (/define VIM_VERSION_PATCHLEVEL/) {
        s/[0-9]+/$ver/;
    }
}

# Write back version.h if it needs updating
if ($need_update) {
    open VERSION_H, ">version.h"    or die "Cannot write to version.h";
    binmode VERSION_H;
    print VERSION_H @lines;
    close VERSION_H;
    print "Successfully updated version.h\n";
} else {
    print "No need to update version.h\n";
}
