class Porkchop::Assignment < Porkchop::Node
  def eval(scope)
    scope[identifier] = expression
  end
end