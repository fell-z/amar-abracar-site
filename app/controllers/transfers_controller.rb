class TransfersController < ApplicationController
  include PageHandler

  before_action :set_order_params, only: :index

  def index
    @transfers = Transfer.order({ @ordered_by => @direction }).pageN(@page_number)
    unless @query.size.zero?
      @transfers = @transfers.where("title LIKE ? or description LIKE ?", "%#{@query}%", "%#{@query}%")
    end
  end

  private

  def set_order_params
    @query = params.fetch(:q, "")
    @ordered_by = params.fetch(:ordered_by, "amount")
    @direction = params.fetch(:direction, "desc")
  end
end
