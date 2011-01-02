class Porkchop::FunctionCall < Porkchop::Node
  def eval(scope)
    function = identifier.eval(scope)
    if arguments
      $log.debug "Calling function #{identifier.inspect} with arguments #{arguments.inspect}"
      function.call(scope, arguments)
    else
      $log.debug "Calling function #{identifier.inspect} with no arguments"
      function.call(scope)
    end
  end
  
  def inspect
    "FunctionCall: #{identifier.inspect} with args #{arguments.inspect}"
  end
end