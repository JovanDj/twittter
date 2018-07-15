# frozen_string_literal: true

require "rails_helper"

RSpec.describe "tweeets/index", type: :view do
  before(:each) do
    assign(:users, [
             build(:user),
             build(:user)
           ])

    assign(:tweeets, [
             build(:tweeet),
             build(:tweeet)
           ])

    assign(:tweeet, [
             build(:tweeet)
           ])
  end

  it "renders a list of tweeets" do
    render
  end
end
