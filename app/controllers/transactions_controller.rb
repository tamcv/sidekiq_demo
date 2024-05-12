class TransactionsController < ApplicationController
  def index
    @message = params[:message]
    render "transactions/index"
  end

  def put
    SendTransactionsToEmail.new(params[:received_email]).call
    @message = "Result is just sent to received email address #{params[:received_email]}"

    redirect_to transactions_path(message: @message)
  end
end
