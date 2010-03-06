class Porkchop::Assignment < Porkchop::Node
  def eval(scope)
    scope[name] = expression
  end
end