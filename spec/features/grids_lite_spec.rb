require "spec_helper"

describe "GridsLite", type: :feature do
  context "asset pipeline stylesheets" do
    it "has a base css file" do
      visit "app/assets/stylesheets/grids_lite/base.css"
      expect(page.body).to include "body {"
    end

    it "has a col-2 css file" do
      visit "app/assets/stylesheets/grids_lite/col-2.css"
      expect(page.body).to include ".col-2-2"
    end

    it "has a col-3 css file" do
      visit "app/assets/stylesheets/grids_lite/col-3.css"
      expect(page.body).to include ".col-3-3"
    end

    it "has a col-4 css file" do
      visit "app/assets/stylesheets/grids_lite/col-4.css"
      expect(page.body).to include ".col-4-4"
    end

    it "has a col-5 css file" do
      visit "app/assets/stylesheets/grids_lite/col-5.css"
      expect(page.body).to include ".col-5-5"
    end

    it "has a col-6 css file" do
      visit "app/assets/stylesheets/grids_lite/col-6.css"
      expect(page.body).to include ".col-6-6"
    end

    it "has a col-8 css file" do
      visit "app/assets/stylesheets/grids_lite/col-8.css"
      expect(page.body).to include ".col-8-8"
    end
  end
end