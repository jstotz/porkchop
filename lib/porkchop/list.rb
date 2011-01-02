class Porkchop::List < Porkchop::Node
  ##
  # A list evaluates to a Ruby array 
  def eval(scope)
    expressions.collect {|e| $log.debug "Evaluating list element: #{e.inspect}"; e.eval(scope)}
  end
  
  def length
    list_elements.elements.length
  end
  
  def inspect
    "List: [#{expressions.collect(&:inspect).join(', ')}]"
  end
  
  def expressions
    list_elements.elements.collect {|element| element.expression}
  end
end