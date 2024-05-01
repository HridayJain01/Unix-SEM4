#!/usr/bin/perl


print "Welcome to Simple and Compound Interest Calculator\n";
print "Enter Principal amount: ";
my $principal = <STDIN>;
chomp($principal);

print "Enter rate of interest (in percentage): ";
my $rate = <STDIN>;
chomp($rate);

print "Enter time (in years): ";
my $time = <STDIN>;
chomp($time);

# Calculate simple interest
my $simple_interest = $principal * $rate * $time / 100;
print "Simple Interest: $simple_interest\n";

# Calculate compound interest
my $amount = $principal * (1 + $rate/100) ** $time;
my $compound_interest = $amount - $principal;
print "Compound Interest: $compound_interest\n";
