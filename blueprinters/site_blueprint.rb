class SiteBlueprint < Blueprinter::Base
  identifier :id

  fields :name, :url, :type, :country, :status_data
end
