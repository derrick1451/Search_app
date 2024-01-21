require 'rails_helper'
RSpec.describe Search, type: :model do
  subject { Search.new(query: 'Anything', user: User.create(name: 'derrick')) }
  before { subject.save }
  it 'should not be valid without a query' do
    subject.query = nil
    expect(subject).to_not be_valid
  end
  it 'should be valid with a query' do
    subject.query = 'Anything'
    expect(subject).to be_valid
  end
end
