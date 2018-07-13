# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tweeets/index', type: :view do
  before(:each) do
    assign(:tweeets, [
             Tweeet.create!(content: 'tweeet 1'),
             Tweeet.create!(content: 'tweeet 2')
           ])

    assign(:tweeet, [
             Tweeet.create!(content: 'tweeet')
           ])
  end

  it 'renders a list of tweeets' do
    render
  end
end
