class Porkchop::Block < Porkchop::Node
  attr_accessor :scope, :proc
  
  def eval(scope)
    proc.call
  end
end