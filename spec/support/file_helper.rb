# frozen_string_literal: true

require 'parseltongue'

FIXTURE_BASE_PATH = 'spec/fixtures/files/'

module FileHelper
  def read_file(path)
    File.read(Parseltongue.root.parent.join(FIXTURE_BASE_PATH, path))
  end
end
