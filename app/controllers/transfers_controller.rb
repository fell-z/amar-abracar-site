class TransfersController < ApplicationController
  include PageHandler

  def index
    @transfers = Transfer.recent.pageN(@page_number)
  end
end
