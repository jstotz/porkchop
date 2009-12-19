require 'rubygems'
require 'treetop'

module Porkchop; end

require File.join(File.dirname(__FILE__), "tokenizer")
require File.join(File.dirname(__FILE__), "parser")
require File.join(File.dirname(__FILE__), "compiler")