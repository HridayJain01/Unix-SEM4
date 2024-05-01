#!/usr/bin/perl

use strict;
use warnings;

print "Welcome to Fibonacci Number Generator and Prime Number Checker\n";

# Prompt the user for the number of Fibonacci terms
print "Enter the number of Fibonacci terms: ";
my $num_terms = <STDIN>;
chomp($num_terms);

print "Fibonacci Series up to $num_terms terms:\n";
my $a = 0;
my $b = 1;
for (my $i = 0; $i < $num_terms; $i++) {
    print "$a ";
    my $temp = $a;
    $a = $b;
    $b = $temp + $b;
}
print "\n";

# Prompt the user to check if a number is prime
print "Enter a number to check if it's prime: ";
my $number = <STDIN>;
chomp($number);

# Check if the number is prime and display the result
if ($number <= 1) {
    print "$number is not prime\n";
} else {
    my $is_prime = 1;
    for (my $i = 2; $i * $i <= $number; $i++) {
        if ($number % $i == 0) {
            $is_prime = 0;
            last;
        }
    }
    if ($is_prime) {
        print "$number is prime\n";
    } else {
        print "$number is not prime\n";
    }
}
