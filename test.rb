require 'rubygems'
require 'treetop'

# require 'lib/porkchop'
require 'pp'

Treetop.load "porkchop"

source_code = File.read('sample.pcp')

parser = PorkchopParser.new
if results = parser.parse(source_code)
  puts 'success:' + "\n"
  pp results
else
  puts 'failure:'
  puts parser.failure_reason
  exit(1)
end
