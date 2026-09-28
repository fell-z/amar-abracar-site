class HelpRequestsController < ApplicationController
  rate_limit to: 5, within: 10.minutes, only: :create

  def new
    @help_request = HelpRequest.new
  end

  def create
    @help_request = HelpRequest.new(help_request_params)

    if @help_request.save
      flash[:notice] = "Pedido criado com sucesso."
      redirect_to root_path
    else
      flash.now[:alert] = "O pedido não pôde ser criado"
      render :new, status: :unprocessable_content
    end
  end

  private

  def help_request_params
    params.expect(help_request: [ :name, :email, :phone_number, :address ])
  end
end
