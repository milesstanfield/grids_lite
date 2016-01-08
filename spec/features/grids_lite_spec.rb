require "spec_helper"

describe "GridsLite", type: :feature do
  it "provides grids_lite.css on the asset pipeline" do
    visit "app/assets/stylesheets/grids_lite.css"
    expect(page.body).to include ".foo {"
  end
end