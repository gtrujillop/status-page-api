class SitesController < ApplicationController
  def get
    @site = site.find(params[:id])
    # For now, harcoding status
    @site = Loaders::StatusData.new(@site).load

    render json: SiteBlueprint.render(@site)
  end
  
end
