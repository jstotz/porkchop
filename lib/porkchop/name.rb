class Porkchop::Name < Porkchop::Node
  def eval(scope)
    scope[self].eval(scope)
  end
  
  def inspect
    "Name: #{text_value}"
  end
end