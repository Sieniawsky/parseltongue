require 'spec_helper'

RSpec.describe 'Set 1 challenge 1' do
  describe 'Convert hex to base64' do
    let(:input_hex) { read_file('challenges/set_1/challenge_1/hex.txt') }
    let(:expected_base64) { read_file('challenges/set_1/challenge_1/base64.txt') }

    it 'converts hex input to base64 output' do
      base64 = Parseltongue::ByteSequence.from_hex(input_hex).to_base64

      expect(base64).to eq(expected_base64)
    end
  end
end