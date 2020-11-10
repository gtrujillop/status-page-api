module Loaders
  class StatusData
    attr_accessor :site, :data

    def initialize(site)
      @site = site
      @data = {}
    end

    def load
      data = get_data(site)
      site.status = data
      site.save
    rescue => e
      # TODO
      # Log to a error reporting system
      logger.fatal e.message
      {}
    end

    private
    
    def get_data(site)
      RestClient.get(site.url) do |response, request|
        resp = JSON.parse(response)
        case response.code
        when 200
          puts "getting status from #{url}"
          resp
        when 400..510
          puts "Error while retrieving data from #{url}"
          return {}
        end
      end
    end
    
    
  end
end
