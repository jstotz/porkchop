$LOAD_PATH << File.dirname(__FILE__)

require 'rubygems'
require 'treetop'

Treetop.load File.join(File.dirname(__FILE__), "porkchop")

class Porkchop::Interpreter
  def eval_file(file)
    eval(File.read(file))
  end
  
  def eval(source_code)
    if nodes = parser.parse(source_code)
      nodes
    else
      puts 'Parse error:'
      puts parser.failure_reason
      exit(1)
    end
  end
  
  def parser
    @parser ||= PorkchopParser.new
  end
end