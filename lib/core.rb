module Porkchop
  class Node < Treetop::Runtime::SyntaxNode
    def eval(scope)
      raise NotImplementedError, "Class #{self.class} does not implement 'eval'"
    end
  end
end

Dir.glob(File.join(File.dirname(__FILE__), "porkchop/*.rb")).each {|f| require f}

S = DEFAULT_SCOPE = Porkchop::Scope.new

S[:+] = lambda do |scope, args|
  args.eval(scope).inject(0) {|result, arg| result + arg}
end

S[:*] = lambda do |scope, args|
  args.eval(scope).inject(1) {|result, arg| result * arg}
end

S[:to_string] = lambda do |scope, args|
  args.eval(scope).first.to_s
end
  
S[:print] = lambda do |scope, args|
  puts args.eval(scope).join
end