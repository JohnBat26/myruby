require "rspec"
load 'text_compressor.rb'

describe TextCompressor do
  it "should be able to add some text" do
    c = TextCompressor.new('')
    c.add_text('first second')
    c.unique.should == ['first', 'second']
    c.index.should == [0, 1]
  end
  it "should be able to add a word" do
    c = TextCompressor.new('')
    c.add_word('first')
    c.unique.should == ['first']
    c.index.should == [0]
  end
  it "should be able to find the index of a word" do
    c = TextCompressor.new('hello world')
    c.unique_index_of('hello').should == 0
    c.unique_index_of('world').should == 1
  end
# ...
# ...

end