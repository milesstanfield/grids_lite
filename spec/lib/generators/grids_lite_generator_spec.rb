require "spec_helper"
require "generator_spec"
require "generators/grids_lite_generator"

describe GridsLiteGenerator, type: :generator do
  destination File.expand_path("../../tmp", __FILE__)
  arguments %w(variables)

  before(:all) do
    prepare_destination
    run_generator
  end

  it "creates a variables file" do
    assert_file "app/assets/stylesheets/grids_lite_variables.scss", File.read("lib/generators/templates/variables.scss")
  end
end
