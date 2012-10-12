require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :title => "Title",
      :description => "MyText",
      :activity => false,
      :price => "9.99",
      :image_link => "Image Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/9.99/)
    rendered.should match(/Image Link/)
  end
end
