require 'fixer/version'
require 'fixer/fixer_io_api'

module Fixer
  BaseUrl = "https://api.fixer.io"
  BaseCurrency = "USD"
  # Your code goes here...

  def self.rate_list(base: 'USD')
    FixerIoApi.fetch_rates(base: base)

  rescue SocketError => e 
    {error: 'Connection Lost'}
  end

  def self.conversion_rates(base: 'USD', expected_currency: , amount:)
    response = FixerIoApi.fetch_rates(base: base, symbols: expected_currency)
    
    if (rates = response['rates']) && !response['rates'].empty?
      currency_rate = rates[expected_currency.to_s]
      amount * currency_rate
    end
  rescue SocketError => e 
    {error: 'Connection Lost'}
  end

end
