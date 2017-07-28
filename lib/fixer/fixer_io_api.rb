require 'httparty'
module FixerIoApi 
  
  BaseUrl = "https://api.fixer.io"

  def self.fetch_rates(base:, symbols: "")
    params = "?base=#{base}"
    params = params.concat("&symbols=#{symbols}") unless symbols.empty?
    url = "#{BaseUrl}/latest#{params}"

    http_req(url)
  end

  def self.historical_data(date)
    date = Date.parse(date).strftime
    url = "#{BaseUrl}/#{date}"
    
    http_req(url)
  end

  private
  def self.http_req(url)
    response = HTTParty.get(url)
    response.parsed_response
  end
end