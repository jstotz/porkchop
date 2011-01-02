class Porkchop::Program < Porkchop::Node
  def eval(scope=nil)
    scope ||= DEFAULT_SCOPE
    elements.each do |element|
      element.eval(scope)
    end
    scope
  end
end