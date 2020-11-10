class SitesController < ApplicationController
  def show
    @site = Site.find(params[:id])
    data = load_data
    
    render json: ::SiteBlueprint.render(data)
  end

  private

  def load_data
    if params[:with_summary].present?
    elsif params[:with_status].present?
      Loaders::StatusData.new(@site).load
    elsif params[:with_components].present?
    elsif params[:with_incidents].present?
    elsif params[:with_unresolved].present?
    elsif params[:with_maintenance].present?
    else
      Loaders::StatusData.new(@site).load
    end
  end
end
