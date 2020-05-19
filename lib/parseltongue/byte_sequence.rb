# frozen_string_literal: true

HEX_HIGH_NIBBLE_FIRST_FULL_SEQUENCE = 'H*'
UNSIGNED_8_BIT_FULL_SEQUENCE = 'C*'
BASE64_NO_LINE_FEED = 'm0'

module Parseltongue
  class ByteSequence
    attr_reader :bytes

    def self.from_hex(hex)
      binary_sequence = [hex].pack(HEX_HIGH_NIBBLE_FIRST_FULL_SEQUENCE)
      bytes = binary_sequence.unpack(UNSIGNED_8_BIT_FULL_SEQUENCE)

      new(bytes)
    end

    def self.from_base64(base64)
      binary_sequence = base64.unpack(BASE64_NO_LINE_FEED).first
      bytes = binary_sequence.unpack(UNSIGNED_8_BIT_FULL_SEQUENCE)

      new(bytes)
    end

    def initialize(bytes)
      @bytes = bytes
    end

    def to_hex
      binary_sequence = @bytes.pack(UNSIGNED_8_BIT_FULL_SEQUENCE)
      binary_sequence.unpack(HEX_HIGH_NIBBLE_FIRST_FULL_SEQUENCE).first
    end

    def to_base64
      binary_sequence = @bytes.pack(UNSIGNED_8_BIT_FULL_SEQUENCE)
      [binary_sequence].pack(BASE64_NO_LINE_FEED)
    end
  end
end
