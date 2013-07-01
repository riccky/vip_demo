class IaLoginTransactionLog < TransactionLog
  attr_accessible :force_challenge, :do_not_validate
  attr_accessor :force_challenge, :do_not_validate
  
  def force_challenge?
    @force_challenge == 'true'
  end

  def skip_validation?
    @do_not_validate == 'true'
  end

end
