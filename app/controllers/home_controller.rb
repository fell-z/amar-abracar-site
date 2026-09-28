class HomeController < ApplicationController
  def index
    @transfers = Transfer.recent.limit(10)
  end
end
