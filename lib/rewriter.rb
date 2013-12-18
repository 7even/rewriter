require 'rewriter/version'

require 'parser/current'
require 'unparser'

module Rewriter
  class << self
    def rewrite(path)
      with_file(path) do |source|
        ast, comments = Parser::CurrentRuby.parse_with_comments(source)
        Unparser.unparse(ast, comments)
      end
    end
    
    def with_file(path)
      original = File.read(path)
      rewritten = yield(original)
      
      temp_path = "#{path}.rewritten"
      ::File.open(temp_path, 'w') do |temp_file|
        temp_file.write(rewritten)
        temp_file.puts unless rewritten.end_with?(?\n)
      end
      
      ::File.rename(temp_path, path)
    end
  end
end
