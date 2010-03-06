class Porkchop::FunctionCall < Porkchop::Node
  def eval(scope)
    function = scope[name]
    argument_values = arguments.eval(scope)
    $log.debug "Calling function #{name.inspect} with args #{argument_values.inspect}"
    function.call(*argument_values)
  end
end