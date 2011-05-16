#!/usr/bin/ruby19
# -*- coding: utf-8 -*-
# Author: Eugene Batogov
# Copyright 2011 Eugene Batogov
#
# This script generates dynamic content for email signatures, adding
#standard information, like a name and email address, to a random quotation
#drawn from a known file.
#
# data :2011-05-03

filename = ARGV[0] || (ENV['HOME']+ '/scripts/sig_quotes.txt')
quotation_file = File.new(filename, 'r')
file_lines=quotation_file.readlines()
quotation_file.close()
quotations = file_lines.to_s.split("\n\n")
random_index = rand(quotations.size)
quotation = quotations[random_index]

sig_file_name=ENV['HOME']+'./signature'
signature_file = File.new(sig_file_name, 'w')
signature_file.puts 'Eugene Batogov | JohnBat26@gmail.com | http://gentoo.theserverside.ru'
signature_file.puts quotation
signature_file.close()


