path = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(path) unless $LOAD_PATH.include?(path)

require 'bundler'
require 'parseltongue' # You know what to do.

desc 'Start a console session with parseltongue loaded'
task :console do
  require 'irb'
  require 'irb/completion'

  ARGV.clear
  IRB.start
end

task :default => :console
