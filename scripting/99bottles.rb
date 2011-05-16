#!/usr/bin/ruby19
# -*- coding: utf-8 -*-
# Author: Eugene Batogov
# Copyright 2011 Eugene Batogov
#
# This script demonstrates basic Object Orientation by singing (okay, printing)
# the “99 Bottles of Beer” song.
#
# data :2011-05-14
class Wall

  def initialize(num_of_bottles)
    @bottles = num_of_bottles
  end

=begin rdoc
  Predicate, ends in a question mark, returns <b>Boolean</b>.
=end

  def empty?()
    @bottles.zero?
  end

  def sing_one_verse!()
    puts sing(' on the wall, ') + sing("\n") + take_one_down! + sing(" on the wall.\n\n")
  end

  private
  def sing(extra='')
    "#{(@bottles > 0) ? @bottles : 'no more'} #{(@bottles == 1) ? 'bottle' :
        'bottles'} of beer" + extra
  end

=begin rdoc
Destructive method named with a bang because it decrements @bottles.
Returns a <b>String</b>.
=end
  def take_one_down!()
    @bottles -= 1
    'take one down, pass it around, '
  end

end