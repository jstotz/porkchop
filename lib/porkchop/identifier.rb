class Porkchop::Identifier < Porkchop::Node
  
  ##
  # Evaluating an identifier returns the unevaluated node it references.
  def eval(scope)
    path = self.text_value.split('.')
    puts "Attempting to look up: #{self.inspect}"
    last = path.pop
    path.each do |part|
      scope = scope[part].eval(scope)
    end
    scope[last]
  end
  
  def to_s
    text_value
  end
  
  def inspect
    "Identifier: #{text_value}"
  end
end