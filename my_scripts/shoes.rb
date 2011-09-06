#!/usr/bin/ruby19
# -*- coding: utf-8 -*-
# Author: Eugene Batogov
# Copyright 2011 Eugene Batogov
#
# data :2011-04-25
#!/usr/bin/ruby -w

require 'shoes'
Shoes.app :width => 300, :height => 200 do
   button("Click me!") { alert("Good job.") }
end