#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
# Author: Eugene Batogov
# Copyright 2011 Eugene Batogov
#
# data :2011-08-16
# version: 1.0
# This script get memcached statistics
# It receive 2 parameters from user: memcached server address and parameter name

require 'socket'

socket = TCPSocket.open(ARGV[0], '11211')
socket.send("stats\r\n", 0)

statistics = []
loop do
  data = socket.recv(4096)
  if !data || data.length == 0
    break
  end
  statistics << data
  if statistics.join.split(/\n/)[-1] =~ /END/
    break
  end
end

#puts statistics.join()
memcached_stats = statistics[0].split("STAT")

hash = Hash[memcached_stats.map do |x|
  key_and_value = x.split(" ")
  [key_and_value[0], key_and_value[1]]
end
]
#printf hash[ARGV[1]]
puts hash[ARGV[1]]



