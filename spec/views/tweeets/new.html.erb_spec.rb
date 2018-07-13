# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tweeets/new', type: :view do
  before(:each) do
    assign(:tweeet, FactoryBot.build(:tweeet))
  end

  it 'renders new tweeet form' do
    render

    assert_select 'form[action=?][method=?]', tweeets_path, 'post' do
    end
  end
end
