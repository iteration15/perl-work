#!/usr/bin/perl

$a = 53;
$b = 1953786;

solution($a, $b);

sub solution {
  my ($a, $b)= @_;

  my @array = ($b =~ m/./g);                  # split B into a list of numbers

  my $first_digit = substr($a, 0, 1);         # take the first digit from A
  my $second_digit = substr($a, -1);          # take the second digit from A

  for (0 .. $#array) {
    if ($array[$_] eq $first_digit) {         # if any index matches the first digit of A
      if ($array[$_ + 1] eq $second_digit) {  # and if the next index matches the second digit of A
        print "$_\n";                            # then return the index of the first digit from B
      }
      else {
        return(-1)                            # return -1 for an unsucessful match of both digits in A
      }
    }
  }
}
