# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tweeets/index', type: :view do
  before(:each) do
    assign(:tweeets, [
             Tweeet.new(content: 'tweeet 1'),
             Tweeet.new(content: 'tweeet 2')
           ])
  end

  it 'renders a list of tweeets' do
    render
  end
end
