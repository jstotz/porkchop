class Porkchop::Comment < Porkchop::Node
  def inspect
    "Comment: #{text_value}"
  end
  
  def eval(scope); end
end