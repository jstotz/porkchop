class Porkchop::Compiler
  def compile_file(file_path)
    parse(File.read(file_path))
  end
  
  def compile(program)
  end
end