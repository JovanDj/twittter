# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tweeet, type: :model do
  it 'is invalid without a tweeet' do
    expect(Tweeet.new).to be_invalid
  end

  it 'is valid with content' do
    expect(Tweeet.new(content: 'tweeet content')).to be_valid
  end

  it 'is invalid without content' do
    expect(Tweeet.new(content: nil)).not_to be_valid
  end

  it 'cannot have blank content' do
    expect(Tweeet.new(content: '')).not_to be_valid
  end

  it 'cannot have content longer than 100 characters' do
    expect(Tweeet.new(content: 'a' * 101)).not_to be_valid
    expect(Tweeet.new(content: 'a' * 100)).to be_valid
    expect(Tweeet.new(content: 'a' * 99)).to be_valid
  end

  it 'it has content of at least 1 character' do
    expect(Tweeet.new(content: 'a')).to be_valid
  end

  it {should belong_to(:user)}

end
