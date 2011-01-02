class Porkchop::StringLiteral < Porkchop::Node
  def eval(scope)
    string.text_value
  end
  
  def inspect
    "StringLiteral: #{text_value}"
  end
end