#!/usr/bin/ruby19
# -*- coding: utf-8 -*-
# Author: Eugene Batogov
# Copyright 2011 Eugene Batogov
#
# TextCompressor: class that do from one text two archive
# data :2011-04-17

class TextCompressor
  attr_reader :unique, :index

  def initialize(text)
    @unique = []
    @index = []
    add_text(text)
  end

  def add_text(text)
    words = text.split
    words.each { |word| add_word(word) }
  end

  def add_word(word)
    i = unique_index_of(word) || add_unique_word(word)
    @index << i
  end


  def unique_index_of(word)
    @unique.index(word)
  end

  def add_unique_word(word)
    @unique << word
    unique.size - 1
  end
end


text = "This specification is the spec for a specification"
compressor = TextCompressor.new(text)
unique_word_array = compressor.unique
word_index = compressor.index
p unique_word_array.inspect
p word_index.inspect