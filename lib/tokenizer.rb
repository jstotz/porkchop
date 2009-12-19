Treetop.load "porkchop"

parser = ArithmeticParser.new
if parser.parse('1+1')
  puts 'success'
else
  puts 'failure'
end

 class Porkchop::Tokenizer
  attr_accessor :source_code
  
  TOKEN_PATTERNS = [
    [:assignment_operator, /:/],
    [:string_interpolation], /\#\{(.*)\}/,
    [:block_start, /\{/],
    [:block_end, /\}/],
    [:list_entry, /\* (.*)\n/],
    [:string_literal, /'(.*)'/],
    [:identifier, /([a-z_]+)/]
  ]
  
  def initialize(source_code)
    @source_code = source_code
  end
  
  def tokenize
    tokens = []
    source_code.each do |source_line|
      TOKEN_PATTERNS.each do |token_type, pattern|
        if matches = source_line.match(pattern)
          tokens << [token_type, matches]
          break
        end
      end
    end
    tokens
  end
end