# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tweeets/show', type: :view do
  before(:each) do
    @tweeet = assign(:tweeet, Tweeet.create!(content: 'tweeet'))
  end

  it 'renders attributes' do
    render
  end
end
