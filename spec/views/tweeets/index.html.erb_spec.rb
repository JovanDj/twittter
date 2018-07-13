require 'rails_helper'

RSpec.describe "tweeets/index", type: :view do
  before(:each) do
    assign(:tweeets, [
      Tweeet.create!(),
      Tweeet.create!()
    ])
  end

  it "renders a list of tweeets" do
    render
  end
end
