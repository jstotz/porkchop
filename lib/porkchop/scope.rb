class Porkchop::Scope < Hash
  def [](name)
    key = name_to_key(name)
    fetch(key)
  rescue KeyError
    raise InvalidName, "Name '#{key}' not in scope."
  end
  
  def []=(name, value)
    key = name_to_key(name)
    super(key, value)
  end
  
  def define(name, &block)
    self[name] = block
  end
  
  private
  
  def name_to_key(name)
    if name.is_a? Porkchop::Name
      name.text_value
    else
      name.to_s
    end
  end
  
  class InvalidName < RuntimeError; end
end