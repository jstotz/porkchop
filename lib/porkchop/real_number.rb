class Porkchop::RealNumber < Porkchop::Node
  def eval(scope)
    $log.debug "Evaluating real number #{text_value}"
    text_value.to_f
  end
end