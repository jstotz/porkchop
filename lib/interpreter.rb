$LOAD_PATH << File.dirname(__FILE__)

require 'rubygems'
require 'treetop'
require 'pp'

Treetop.load File.join(File.dirname(__FILE__), "porkchop")

class Porkchop::Interpreter
  def eval_file(file)
    eval(File.read(file))
  end
  
  def eval(source_code)
    if results = parser.parse(source_code)
      puts 'success:' + "\n"
      pp results
    else
      puts 'failure:'
      puts parser.failure_reason
      exit(1)
    end
  end
  
  def parser
    @parser ||= PorkchopParser.new
  end
end