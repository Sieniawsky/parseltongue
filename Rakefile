path = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(path) unless $LOAD_PATH.include?(path)

require 'rake'
require 'rspec/core/rake_task'
require 'parseltongue'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = Dir.glob('spec/**/*_spec.rb')
end

desc 'Start a console session with parseltongue loaded'
task :console do
  require 'irb'
  require 'irb/completion'

  ARGV.clear
  IRB.start
end

task :default  => :spec
