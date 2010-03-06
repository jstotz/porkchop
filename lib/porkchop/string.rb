class Porkchop::String < Porkchop::Node
  def eval(scope)
    string.text_value
  end
  
  def inspect
    "String: #{text_value}"
  end
end