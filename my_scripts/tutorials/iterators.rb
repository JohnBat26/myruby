#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# Author: Eugene Batogov
# Copyright 2011 Eugene Batogov
#
# data :2011-09-19


puts '==== 1. each iterator ===='
arj = [1, 2, 3, 4, 5]
arj.each do |i|
  puts i
end

puts '==== 2. each index iterator ====='
array = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
array.each_index { |i| print "#{array[i]} " }
puts ""
puts '==== 3. collect iterator ====='
a = [1, 2, 3, 4, 5]
b = Array.new
b = a.collect { |x| 10 * x }
puts b

puts '==== 4. upto & step  iterators ====='
1.upto(10) { |i| print "#{i} " }
puts ""
1.step(10, 2) { |i| print "#{i} " }
puts ""

puts '==== 5. times  iterator ====='
10.times { |i| print "#{i} " }




