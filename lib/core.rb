module Porkchop
  class Node < Treetop::Runtime::SyntaxNode
    def eval(scope)
      raise NotImplementedError, "Class #{self.class} does not implement 'eval'"
    end
  end
end

Dir.glob(File.join(File.dirname(__FILE__), "porkchop/*.rb")).each {|f| require f}

S = DEFAULT_SCOPE = Porkchop::Scope.new

S.define(:+) do |n1, n2|
  n1 + n2
end

S.define(:print) do |object|
  puts object
end