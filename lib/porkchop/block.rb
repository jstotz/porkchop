class Porkchop::Block < Porkchop::Node    
  def eval(scope)
    @scope = scope.new_child
    program.eval(@scope)
  end
end