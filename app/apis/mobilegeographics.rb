class TidesAPI
  attr_reader :predictions
  def initialize(loc_id, options)
    url = "http://tides.mobilegeographics.com/locations/#{loc_id}.html"
    if (options[:year]) ? url += "?y=#{options[:year]}"
    if (options[:month]) ? url += "&m=#{options[:month]}"
    if (options[:day]) ? url += "&d=#{options[:day]}"
    response = HTTParty.get(url)
    parsed_html = Nokogiri::HTML.parse(response.body)
    @predictions = parsed_html.css(".predictions-table").split("\n")
  end
end
