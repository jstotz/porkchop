class Porkchop::Statement < Porkchop::Node
  def eval(scope)
    expression.eval(scope)
  end
end