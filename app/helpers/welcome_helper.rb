module WelcomeHelper
  class TidesAPI
    attr_reader :predictions
    def initialize(loc_id, options)
      url = "http://tides.mobilegeographics.com/locations/#{loc_id}.html"
      (options[:year]) ? url += "?y=#{options[:year]}" : nil
      (options[:month]) ? url += "&m=#{options[:month]}" : nil
      (options[:day]) ? url += "&d=#{options[:day]}" : nil
      response = HTTParty.get(url)
      parsed_html = Nokogiri::HTML.parse(response.body)
      @predictions = parsed_html.css(".predictions-table").first.children.first.to_s.split("\n")
    end
  end
end
