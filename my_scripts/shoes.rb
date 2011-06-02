#!/usr/bin/ruby19
# -*- coding: utf-8 -*-
# Author: Eugene Batogov
# Copyright 2011 Eugene Batogov
#
# data :2011-04-25
#!/usr/bin/ruby -w

require 'Qt4'
a = Qt::Application.new(ARGV)
hello = Qt::PushButton.new("Hello World!")
hello.resize(100, 30)
hello.show
a.exec