module WelcomeHelper
  class TidesAPI
    attr_reader :tides

    def initialize(loc_id, options)
      url = "http://tides.mobilegeographics.com/locations/152.html"
      p "Tides API URL: #{url}"
      (options[:year]) ? url += "?y=#{options[:year]}" : nil
      (options[:month]) ? url += "&m=#{options[:month]}" : nil
      (options[:day]) ? url += "&d=#{options[:day]}" : nil
      response = HTTParty.get(url)
      parsed_html = Nokogiri::HTML.parse(response.body)
      @tides = parsed_html.css(".predictions-table").first.children.first.to_s.split("\n").select do |x|
        (x[0, 4] == ("%04d" % options[:year])) && (x[5, 2] == ("%02d" % options[:month])) && (x[8, 2] == ("%02d" % options[:day]))
      end
      p @tides
      return @tides
    end
  end
end
