# frozen_string_literal: true

require "rails_helper"

RSpec.describe "tweeets/edit", type: :view do
  before(:each) do
    @tweeet = FactoryBot.create(:tweeet)
  end

  it "renders the edit tweeet form" do
    render

    assert_select "form[action=?][method=?]", tweeet_path(@tweeet), "post" do
    end
  end
end
