require 'rails_helper'

RSpec.describe "tweeets/show", type: :view do
  before(:each) do
    @tweeet = assign(:tweeet, Tweeet.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end