require 'spec_helper'

RSpec.describe Parser do
  subject { described_class.new.parse(command) }
  let(:command) { nil }

  it { is_expected.to be_truthy }
end
