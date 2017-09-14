class HomeController < ApplicationController
  def index
    @response = HTTParty.get('http://api.fixer.io/latest?base=USD')
    businessinsider_response = HTTParty.get("https://newsapi.org/v1/articles?source=business-insider&sortBy=top&apiKey=553f9d4cc4c44a6bba00774325c1a216")

    @articles = businessinsider_response['articles']
  end
end
