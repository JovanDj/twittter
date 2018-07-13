# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tweeet, type: :model do

  subject {described_class.new}

  let(:user) {build :user}

  it 'is invalid if empty' do
    expect(subject).to be_invalid
  end

  it 'is invalid without user' do
    subject.user = nil
    expect(subject).to_not be_valid
  end

  it 'is valid with user' do
    subject.user = user
    subject.content = 'Tweeet'
    expect(subject).to be_valid
  end

  it 'is valid with content' do
    subject.content = 'tweeet'
    subject.user = user
    expect(subject).to be_valid
  end

  it 'is invalid without content' do
    subject.content = nil
    expect(subject).not_to be_valid
  end

  it 'cannot have blank content' do
    expect(Tweeet.new(content: '')).not_to be_valid
  end

  it 'cannot have content longer than 100 characters' do
    expect(Tweeet.new(content: 'a' * 101, user: user)).not_to be_valid
    expect(Tweeet.new(content: 'a' * 100, user: user)).to be_valid
    expect(Tweeet.new(content: 'a' * 99, user: user)).to be_valid
  end

  it 'it has content of at least 1 character' do
    expect(Tweeet.new(content: 'a', user: user)).to be_valid
  end


end
