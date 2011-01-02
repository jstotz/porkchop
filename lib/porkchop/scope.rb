class Porkchop::Scope < Hash
  attr_accessor :parent
  
  def initialize(parent=nil)
    self.parent = parent
  end
  
  def [](name)
    name = name.to_s
    if has_key? name
      super(name)
    elsif parent
      parent[name]
    else
      raise InvalidIdentifier, "Identifier '#{name.to_s}' not in scope."
    end
  end
  
  def []=(name, value)
    super(name.to_s, value)
  end
  
  def new_child
    self.class.new(self)
  end
    
  class InvalidIdentifier < RuntimeError; end
end