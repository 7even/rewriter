guard :rspec, all_on_start: true do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { 'spec' }
end

guard :bundler do
  watch('Gemfile')
  watch('rewriter.gemspec')
end

notification :terminal_notifier
