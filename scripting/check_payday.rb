#!/usr/bin/ruby19
# -*- coding: utf-8 -*-
# Author: Eugene Batogov
# Copyright 2011 Eugene Batogov
#
# This script is a simple utility that I use to remind myself when a payday is
# approaching. It is very much in the quick-and-dirty style, and intentionally so
#
# data :2011-04-28


DAYS_IN_PAY_PERIOD = 14
SECONDS_IN_DAY = 60*60*24

matching_date = Time.local(2011, 5, 20)
current_date = Time.now

difference_in_seconds = (current_date - matching_date)
difference_in_days = (difference_in_seconds/SECONDS_IN_DAY).to_i
days_to_wait = (DAYS_IN_PAY_PERIOD - difference_in_days)% DAYS_IN_PAY_PERIOD


if (days_to_wait.zero?)
  puts 'Payday today!'
else
  print 'Payday in ' + days_to_wait.to_s + ' day'
  puts days_to_wait == 1 ? '.' : 's.'
end