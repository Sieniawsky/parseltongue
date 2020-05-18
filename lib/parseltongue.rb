# frozen_string_literal: true

module Parseltongue
  def self.root
    Pathname.new(File.expand_path(__dir__))
  end
end
