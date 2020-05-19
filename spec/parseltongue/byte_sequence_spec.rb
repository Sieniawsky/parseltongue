require 'spec_helper'

RSpec.describe Parseltongue::ByteSequence do
  describe '::from_hex' do
    subject { described_class.from_hex(value).bytes }

    let(:value) { '11827c' }
    let(:bytes) { [17, 130, 124] }

    it { expect(subject).to eq(bytes) }
  end

  describe '::from_base64' do
    subject { described_class.from_base64(value).bytes }

    let(:value) { 'c3dhZ2xvcmQ=' }
    let(:bytes) { [115, 119, 97, 103, 108, 111, 114, 100] }

    it { expect(subject).to eq(bytes) }
  end

  describe '#to_hex' do
    subject { described_class.new(bytes).to_hex }

    let(:bytes) { [17, 130, 124] }
    let(:hex) { '11827c' }

    it { expect(subject).to eq(hex) }
  end

  describe '#to_base64' do
    subject { described_class.new(bytes).to_base64 }

    let(:bytes) { [115, 119, 97, 103, 108, 111, 114, 100] }
    let(:base64) { 'c3dhZ2xvcmQ=' }

    it { expect(subject).to eq(base64) }
  end
end
