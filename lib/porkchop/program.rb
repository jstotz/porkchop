class Porkchop::Program < Porkchop::Node
  def eval(scope=nil)
    scope ||= DEFAULT_SCOPE
    statements.elements.each do |statement|
      statement.eval(scope)
    end
    scope
  end
end