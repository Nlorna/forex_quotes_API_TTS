class HomeController < ApplicationController
  def index
    @response = HTTParty.get('http://api.fixer.io/latest?base=USD')
    businessinsider_response = HTTParty.get("https://newsapi.org/v1/articles?source=business-insider&sortBy=top&apiKey=#{ENV['NEWS_API']}")

    @articles = businessinsider_response['articles']
  end
end
