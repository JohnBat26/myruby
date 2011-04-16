require 'benchmark'
load "document.rb"
load "loadxml.rb"

doc = Document.new('Hamlet Wewe Sided ', 'Shakespeare', 'To be or adesdad ns ss sdsda zz sdsd sdsd  sdsdsdc ...')

Benchmark.bm do |x|
  x.report { doc.index_for("zz") }
  x.report { doc.average_word_length }
  x.report { load_dc }
  x.report { load_fonts }
end