class Porkchop::Program < Porkchop::Node
  def eval
    statements.elements.each do |statement|
      $log.debug "Evaluating statement: #{statement.inspect}"
      statement.eval(DEFAULT_SCOPE)
    end
  end
end