# frozen_string_literal: true

RSpec.describe "tweeets/show", type: :view do
  before(:each) do
    @tweeet = FactoryBot.create(:tweeet)
  end

  it "renders attributes" do
    render
  end
end
