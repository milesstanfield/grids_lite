class GridsLiteGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :arg, type: :string

  def copy_variables_file
    if arg == "variables"
      copy_file "variables.scss", "app/assets/stylesheets/grids_lite_variables.scss"
    end
  end
end
