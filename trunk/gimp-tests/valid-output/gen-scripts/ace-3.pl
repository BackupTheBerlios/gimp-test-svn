#!/usr/bin/perl -w

use strict;
use warnings;

# This is done to execute the test wrapper.
require GimpTest::Run;

# This function will be modified from script to script.
sub gen_image
{
    my $img = load_input_file("tiger_sitting.png");
    # To eliminate the Alpha layer.
    gimp_image_flatten($img);
    plug_in_ace (1, $img, get_layer($img), 1.0, 0, 20, 0, 25, 0, 2);
    return { 'image_id' => $img };
}


