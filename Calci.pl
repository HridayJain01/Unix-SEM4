#!/usr/bin/perl

use strict;
use warnings;

print "Welcome to Basic Calculator\n";
print "Enter first number: ";
my $num1 = <STDIN>;


print "Enter second number: ";
my $num2 = <STDIN>;


print "Select operation:\n";
print "1. Addition\n";
print "2. Subtraction\n";
print "3. Multiplication\n";
print "4. Division\n";
my $choice = <STDIN>;


my $result;
if ($choice == 1) {
    $result = $num1 + $num2;
} elsif ($choice == 2) {
    $result = $num1 - $num2;
} elsif ($choice == 3) {
    $result = $num1 * $num2;
} elsif ($choice == 4) {
    $result = $num1 / $num2;
} else {
    print "Invalid choice\n";
    exit;
}

print "Result: $result\n";
