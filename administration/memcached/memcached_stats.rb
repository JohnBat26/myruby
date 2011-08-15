#! /usr/bin/env ruby
# -*- coding: utf-8 -*-
# Author: Eugene Batogov
# Copyright 2011 Eugene Batogov
#
# data :2011-08-15

require 'socket'

socket = TCPSocket.open('172.20.0.4', '11211')
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

puts statistics.join()
