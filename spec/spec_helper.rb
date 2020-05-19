# frozen_string_literal: true

require 'bundler/setup'
require 'parseltongue'

spec_path = Parseltongue.root.parent.join('spec/support/**/*.rb')
Dir.glob(spec_path).sort.each { |file| require file }

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include FileHelper
end
