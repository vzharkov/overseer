require 'spec_helper'

RSpec.describe Command do
  subject { described_class.new(*args) }
  let(:args) { [:remind, :me, 'some random text', Time.now] }
  let(:expected_attributes) do
    {
      name: :remind,
      who: :me,
      title: 'some random text',
      when_time: Time.now
    }
  end

  it { is_expected.to be_an_instance_of(Command) }
  it do
    Timecop.freeze(Time.now) do
      is_expected.to have_attributes(expected_attributes)
    end
  end
end

