# frozen_string_literal: true

RSpec.describe 'Set 1 challenge 2' do
  describe 'Fixed XOR' do
    let(:input_hex_1) { read_file('challenges/set_1/challenge_2/hex_1.txt') }
    let(:input_hex_2) { read_file('challenges/set_1/challenge_2/hex_2.txt') }
    let(:expected_hex) { read_file('challenges/set_1/challenge_2/expected_hex.txt') }

    it 'performs xor on the 2 hex strings to produce the third' do
      hex_1 = Parseltongue::ByteSequence.from_hex(input_hex_1)
      hex_2 = Parseltongue::ByteSequence.from_hex(input_hex_2)
      result = hex_1.xor(hex_2).to_hex

      expect(result).to eq(expected_hex)
    end
  end
end
