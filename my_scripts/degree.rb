#!/usr/bin/ruby19
# -*- coding: utf-8 -*-
# My first ruby program
# It transform  from Celcius to Fahrenheit
# 2011-04-10

print "Введите температуру и шкалу (C or F): "
str = gets
exit if str.nil? or str.empty?
temp, scale = str.split(" ")
str.chomp!
abort "#{temp} недопустимое число." if temp !~ /-?\d+/

temp = temp.to_f
case scale
  when "C", "c"
    f = 1.8*temp + 32
  when "F", "f"
    c =(5.0/9.0)*(temp-32)

  else
    abort "Необходимо задать C или F."
end

if  f.nil?
  print "#{c} градусов C\n"
else
  print "#{f} градусов F\n"
end
