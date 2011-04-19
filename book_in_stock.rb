#!/usr/bin/ruby19
# -*- coding: utf-8 -*-
# Author: Eugene Batogov
# Copyright 2011 Eugene Batogov
#
# data :2011-04-19

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

end

b1 = BookInStock.new("isbn1", 3)
p b1
b2 = BookInStock.new("isbn2", 3.14)
p b2
b3 = BookInStock.new("isbn3", "5.67")
p b3