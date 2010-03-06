class Porkchop::Statement < Porkchop::Node
  def eval(scope)
    expression.eval(scope)
  end
  
  def inspect
    text_value
  end
end