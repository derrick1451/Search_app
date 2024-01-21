require 'rails_helper'
RSpec.describe User, type: :model do
  # tests go here
  subject { User.new(name: 'Anything') }
  before { subject.save }
  it 'should not be valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'should be valid with a name' do
    subject.name = 'Anything'
    expect(subject).to be_valid
  end
end
