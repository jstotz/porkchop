class Porkchop::FloatLiteral < Porkchop::Node
  def eval(scope)
    text_value.to_f
  end
  
  def inspect
    "FloatLiteral: #{text_value.to_f}"
  end
end