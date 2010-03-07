class Porkchop::Name < Porkchop::Node
  def eval(scope)
    parts = self.text_value.split('.')
    parts.each do |part|
      scope = scope[part].eval(scope)
    end
    scope
  end
  
  def to_s
    text_value
  end
  
  def inspect
    "Name: #{text_value}"
  end
end