class Porkchop::Symbol < Porkchop::Node
  def eval(scope)
    scope[name]
  end
end