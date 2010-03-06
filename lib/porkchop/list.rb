class Porkchop::List < Porkchop::Node
  def eval(scope)
    values.collect {|v| v.eval(scope)}
  end
  
  def values
    list_elements.elements.collect {|e| e.value}
  end
end