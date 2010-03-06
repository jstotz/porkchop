class Porkchop::Integer < Porkchop::Node
  def eval(scope)
    $log.debug "Evaluating integer #{text_value}"
    text_value.to_i
  end
end