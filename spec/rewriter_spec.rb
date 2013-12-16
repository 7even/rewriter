require 'spec_helper'

describe Rewriter do
  describe ".rewrite" do
    let(:file_path) do
      file = Tempfile.new(['code', '.rb'])
      File.open(file.path, 'w') do |tempfile|
        tempfile.write('some.ruby(:code, {:ugly=>true})')
      end
      
      file.path
    end
    
    it "rewrites the code in a given file" do
      Rewriter.rewrite(file_path)
      
      rewritten = File.read(file_path)
      expect(rewritten).to eq('some.ruby(:code, {:ugly => true})')
    end
  end
end
