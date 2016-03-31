guard :rspec, cmd: "bundle exec rspec" do
  require "guard/rspec/dsl"
  dsl = Guard::RSpec::Dsl.new(self)

  # RSpec files
  rspec = dsl.rspec
  watch(rspec.spec_helper) { rspec.spec_dir }
  watch(rspec.spec_support) { rspec.spec_dir }
  watch(rspec.spec_files)
  watch(%r{^spec/pieces/(.+)\.rb$})     { |m| "spec/pieces/#{m[1]}_spec.rb" }


  # Ruby files
  ruby = dsl.ruby
  dsl.watch_spec_files_for(ruby.lib_files)
  watch(%r{^lib/chess/(.+)\.rb$})     { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^lib/chess/pieces/(.+)\.rb$})     { |m| "spec/pieces/#{m[1]}_spec.rb" }
end

