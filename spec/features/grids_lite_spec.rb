require "spec_helper"

describe "GridsLite", type: :feature do
  context "asset pipeline stylesheets" do
    it "has a base css file" do
      visit "app/assets/stylesheets/grids_lite/base.scss"
      expect(page.body).to include ".gutters {"
    end

    it "has a col-1 css file" do
      visit "app/assets/stylesheets/grids_lite/col-1.scss"
      expect(page.body).to include ".col-1-1"
    end

    it "has a col-2 css file" do
      visit "app/assets/stylesheets/grids_lite/col-2.scss"
      expect(page.body).to include ".col-2-2"
    end

    it "has a col-3 css file" do
      visit "app/assets/stylesheets/grids_lite/col-3.scss"
      expect(page.body).to include ".col-3-3"
    end

    it "has a col-4 css file" do
      visit "app/assets/stylesheets/grids_lite/col-4.scss"
      expect(page.body).to include ".col-4-4"
    end

    it "has a col-5 css file" do
      visit "app/assets/stylesheets/grids_lite/col-5.scss"
      expect(page.body).to include ".col-5-5"
    end

    it "has a col-6 css file" do
      visit "app/assets/stylesheets/grids_lite/col-6.scss"
      expect(page.body).to include ".col-6-6"
    end

    it "has a col-7 css file" do
      visit "app/assets/stylesheets/grids_lite/col-7.scss"
      expect(page.body).to include ".col-7-7"
    end

    it "has a col-8 css file" do
      visit "app/assets/stylesheets/grids_lite/col-8.scss"
      expect(page.body).to include ".col-8-8"
    end

    it "has a col-9 css file" do
      visit "app/assets/stylesheets/grids_lite/col-9.scss"
      expect(page.body).to include ".col-9-9"
    end

    it "has a col-10 css file" do
      visit "app/assets/stylesheets/grids_lite/col-10.scss"
      expect(page.body).to include ".col-10-10"
    end

    it "has a col-11 css file" do
      visit "app/assets/stylesheets/grids_lite/col-11.scss"
      expect(page.body).to include ".col-11-11"
    end

    it "has a col-12 css file" do
      visit "app/assets/stylesheets/grids_lite/col-12.scss"
      expect(page.body).to include ".col-12-12"
    end

    it "has a col-13 css file" do
      visit "app/assets/stylesheets/grids_lite/col-13.scss"
      expect(page.body).to include ".col-13-13"
    end

    it "has a col-14 css file" do
      visit "app/assets/stylesheets/grids_lite/col-14.scss"
      expect(page.body).to include ".col-14-14"
    end
  end
end