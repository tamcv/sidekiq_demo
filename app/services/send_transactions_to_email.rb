class SendTransactionsToEmail
  def initialize(email)
    @email = email
  end

  def call
    Rails.logger.info "Querying transactions"
    sleep 3
    Rails.logger.info "Building transactions"
    sleep 3
    Rails.logger.info "Sending transactions to #{email}"
    sleep 3
    Rails.logger.info "Transactions sent"
  end

  private

  attr_reader :transactions, :email
end
