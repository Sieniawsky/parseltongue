# frozen_string_literal: true

require 'awesome_print'

module Parseltongue
  def self.root
    Pathname.new(File.expand_path(__dir__))
  end
end

Dir.glob(Parseltongue.root.join('**/*.rb')).sort.each { |file| require file }
