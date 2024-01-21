require 'rails_helper'
RSpec.describe Article, type: :model do
    #tests go here
    subject { Article.new(title: "Anything", body: "Anything",user: User.create(name: 'derrick')) }
    before { subject.save }
    it "should not be valid without a title" do
        subject.title = nil
        expect(subject).to_not be_valid
    end
    it "should be valid with a title" do
        subject.title = "Anything"
        expect(subject).to be_valid
    end
    it "should not be valid without a body" do
        subject.body = nil
        expect(subject).to_not be_valid
    end
    it "should be valid with a body" do
        subject.body = "Anything"
        expect(subject).to be_valid
    end
end