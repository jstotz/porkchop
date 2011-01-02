class Porkchop::IntegerLiteral < Porkchop::Node
  def eval(scope)
    #$log.debug "Evaluating integer #{text_value}"
    text_value.to_i
  end
  
  def inspect
    "IntegerLiteral: #{text_value.to_i}"
  end
end