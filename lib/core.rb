module Porkchop
  class Node < Treetop::Runtime::SyntaxNode
    def eval(scope)
      raise NotImplementedError, "Class #{self.class} does not implement 'eval'"
    end
  end
end

Dir.glob(File.join(File.dirname(__FILE__), "porkchop/*.rb")).each {|f| require f}

S = DEFAULT_SCOPE = Porkchop::Scope.new

S[:+] = lambda do |*args|
  raise "+ needs at least 2 arguments. duh." if args.length < 2
  result = args.shift + args.shift
  if !args.empty?
    result = args.inject(result) {|r, arg| r + arg}
  end
  result
end

S[:to_string] = lambda do |obj|
  obj.to_s
end
  
S[:print] = lambda do |obj|
  puts obj
end

S[:map] = lambda do |fun, list|
  puts "mapping: #{fun}"
  puts "on to: #{list}"
  list.map(&fun)
end
