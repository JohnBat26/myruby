#!/usr/bin/ruby19
# -*- coding: utf-8 -*-
# Author: Eugene Batogov
# Copyright 2011 Eugene Batogov
#
# Document: An example Ruby class
# data :2011-04-13


# Class that models a plain text document, complete with title
# and author:
#
# doc = Document.new( 'Hamlet', 'Shakespeare', 'To be or...' )
# puts doc.title
# puts doc.author
# puts doc.content
#
# Document instances know how to parse their content into words:
#
# puts doc.words
# puts doc.word_count
#
class Document

  attr_accessor :writable
  attr_reader :title, :author, :content

  def initialize(title, author, content)
    @title = title
    @author = author
    @content = content
  end

  def words
    @content.split
  end


  def word_count
    words.size
  end


  def count_words_in(the_string)
    the_words = the_string.split
    the_words.size
  end

  def title=(new_title)
    if @writable
      @title = new_title
    end
  end

  def load_font(name, size = 12)
    # Go font hunting...
  end

  def echo_all(*args)
    args.each { |arg| puts arg }
  end

  def add_authors(*names)
    @author += "#{names.join(' ')}"
  end

  def index_for(word)
    words.find_index { |this_word| word ==this_word }
  end

  def average_word_length
    total = words.inject(0.0) { |result, word| word.size + result }
    total / word_count
  end

  def obscure_times!
    @content.gsub!(/\d\d:\d\d (AM|PM)/, '**:** **')
  end

  def about_me
    puts "I am #{self}"
    puts "My title is #{self.title}"
    puts "I have #{self.word_count} words"
  end

  def to_s
    "Document: #{title} by #{author}"
  end

  # This method works because self is the right thing,
  # the document instance, when you call it.
  def print_word_count
    n = word_count
    puts "The number of words is #{word_count}"
  end

  def send(recipient)
# Do some interesting SMTP stuff...
  end



end

