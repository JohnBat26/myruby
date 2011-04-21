require 'rubygems'
gem 'test-unit'
require 'test/unit'
require 'test/unit/ui/console/testrunner'
load 'document.rb'

class DocumentTest < Test::Unit::TestCase

  def setup
    @text = 'A bunch of words'
    @doc = Document.new('test', 'nobody', @text)
  end

  def test_that_document_holds_onto_contents
    assert_equal @text, @doc.content, 'Contents are still there'
  end

  def test_that_doc_can_return_words_in_array
    assert @doc.words.include?('A')
    assert @doc.words.include?('bunch')
    assert @doc.words.include?('of')
    assert @doc.words.include?('words')
  end

  def test_that_word_count_is_correct
    assert_equal 4, @doc.word_count, 'Word count is correct'
  end

  def test_that_add_operation_correct
    doc1 = Document.new('Tag Line1', 'Kirk', "These are the voyages")
    doc2 = Document.new('Tag Line2', 'Kirk', "of the star ship ...")
    total_document = doc1 + doc2
    assert_equal total_document.content, 'These are the voyages of the star ship ...'

  end

  def test_that_not_operation_correct
    favorite = Document.new('Favorite', 'Russ', 'Chocolate is best')

    assert_equal (!favorite).content, "It is not true: Chocolate is best"

  end

end