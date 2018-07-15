# frozen_string_literal: true

require "rails_helper"

RSpec.describe Tweeet, type: :model do
  let(:user) { build :user }

  subject { described_class.new(content: "Tweeet", user: user) }


  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "without content is invalid" do
    subject.content = nil
    expect(subject).not_to be_valid
  end

  it "without user is invalid" do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  context "with a user" do
    it "with content is valid" do
      subject.content = "tweeet"
      expect(subject).to be_valid
    end

    it "without content is invalid" do
      subject.content = nil
      expect(subject).to be_invalid
    end
  end

  context "with content" do
    it "with user is valid" do
      expect(subject).to be_valid
    end

    it "without user is invalid" do
      subject.user = nil
      expect(subject).to be_invalid
    end
  end


  it "cannot have blank content" do
    expect(Tweeet.new(content: "")).not_to be_valid
  end

  it "cannot have content longer than 100 characters" do
    expect(Tweeet.new(content: "a" * 101, user: user)).not_to be_valid
    expect(Tweeet.new(content: "a" * 100, user: user)).to be_valid
    expect(Tweeet.new(content: "a" * 99, user: user)).to be_valid
  end

  it "it has content of at least 1 character" do
    expect(Tweeet.new(content: "a", user: user)).to be_valid
  end

  it { should have_many(:likes)}
end
