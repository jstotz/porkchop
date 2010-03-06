$LOAD_PATH << File.dirname(__FILE__)

require 'rubygems'
require 'treetop'
require 'core'
require 'ruby-debug'
require 'logger'

$log = Logger.new($stderr)

Treetop.load File.join(File.dirname(__FILE__), "porkchop")

class Porkchop::Interpreter
  def eval(source_code)
    if nodes = parser.parse(source_code)
      #debugger
      #nodes.write_dot_file('result')
      nodes.eval
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