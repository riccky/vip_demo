module VipUser::VipClient
  require "#{Rails.root}/lib/Vip_User/VIPUserServicesDriver.rb"

  class VipClient
    def initialize(uri_path)
      @driver = AuthenticationServicePort.new("https://vipuserservices-auth.verisign.com/" + uri_path)
      @driver.loadproperty("#{Rails.root}/config/vip_auth.properties")
    end

    def evaluate_risk(username, ip_address, user_agent, ia_auth_data)
      request_id = "abcd1234" # requestId
      on_behalf_of_account_id = nil
      key_value_pairs = []
      req = EvaluateRiskRequestType.new(request_id, on_behalf_of_account_id, username, ip_address, user_agent, ia_auth_data, key_value_pairs)
      evaluate_risk_result_to_hash(@driver.evaluateRisk(req))
    end

    def deny_risk(username, event_id, ia_auth_data)
      request_id = "abcd1234" # requestId
      on_behalf_of_account_id = nil
      verify_method = nil # verifyMethod
      remember_device = true # rememberDevice
      key_value_pairs = []
      req = DenyRiskRequestType.new(request_id, on_behalf_of_account_id, username, event_id, verify_method, ia_auth_data, remember_device, key_value_pairs)
      feedback_risk_result_to_hash(@driver.denyRisk(req))
    end

    def confirm_risk(username, event_id)
      request_id = "abcd1234" # requestId
      on_behalf_of_account_id = nil # onBehalfOfAccountId
      verify_method = nil # verifyMethod
      key_value_pairs = [] # keyValuePairs
      req = ConfirmRiskRequestType.new(request_id, on_behalf_of_account_id, username, event_id, verify_method, key_value_pairs)
      feedback_risk_result_to_hash(@driver.confirmRisk(req))
    end

    def create_user(username)
      request_id = "abcd1234" # requestId
      req = CreateUserRequestType.new(request_id, nil, username, nil)
      convert_endian(@driver.createUser(req))
    end

    def add_credential(username, credential_id, otp)
      request_id = "abcd1234" # requestId
      credential_type = CredentialTypeEnum.new()
      credential_type = "STANDARD_OTP"
      credential_detail = CredentialDetailType.new(credential_id, credential_type, nil)
      otp_auth_data = OtpAuthDataType.new(otp, nil)
      req = AddCredentialRequestType.new(request_id, nil, username, credential_detail, otp_auth_data)
      convert_endian(@driver.addCredential(req))
    end

    def authenticate_user(username, otp)
      request_id = "abcd1234" # requestId
      otp_auth_data = OtpAuthDataType.new(otp, nil)
      req = AuthenticateUserRequestType.new(request_id, nil, username, nil, otp_auth_data)
      convert_endian(@driver.authenticateUser(req))
    end

    def evaluate_tr_risk(username, ip_address, user_agent, ia_auth_data, bank_code, dst_account, amount)
      request_id = "abcd1234" # requestId
      on_behalf_of_account_id = nil
      key_value_pairs = []
      event_id = nil
      account_type = AccountType.new()
      account_type = "BUSINESS" # BUSINESS, CHECKING, OTHER, SAVINGS
      src_account = Account.new(username, "Bizy", account_type, nil, nil)
      dst_account = Account.new(dst_account, bank_code, account_type, nil, nil)
      transaction_type = TransactionType.new()
      transaction_type = "WIRETRANSFER" # BILLPAYMENT, CHECKREQUEST, ELECTRONICREALTIMEBANKTRANSFER, JOURNALING, OTHER, WIRETRANSFER
      channel_type = MonetaryTransactionChannelType.new()
      channel_type = "WEB" # ATM, MOBILE, OTHER, PHONE, TELLER, WEB
      mt_obj = MonetaryTransactionType.new(src_account, dst_account, event_id, amount, nil, transaction_type, channel_type)
      req = EvaluateMonetaryTransactionRiskRequestType.new(request_id, on_behalf_of_account_id, username, ip_address, user_agent, ia_auth_data, key_value_pairs, mt_obj)
      evaluate_tr_risk_result_to_hash(@driver.evaluateMonetaryTransactionRisk(req))
    end

    def deny_tr_risk(username, transaction_id)
      request_id = "abcd1234" # requestId
      on_behalf_of_account_id = nil
      verify_method = nil # verifyMethod
      is_monetary_transaction = true # isMonetaryTransaction
      key_value_pairs = []
      req = DenyTransactionRiskRequestType.new(request_id, on_behalf_of_account_id, username, transaction_id, is_monetary_transaction, verify_method, key_value_pairs)
      feedback_risk_result_to_hash(@driver.denyTransactionRisk(req))
    end

    def confirm_tr_risk(username, transaction_id)
      request_id = "abcd1234" # requestId
      on_behalf_of_account_id = nil # onBehalfOfAccountId
      verify_method = nil # verifyMethod
      is_monetary_transaction = true # isMonetaryTransaction
      key_value_pairs = [] # keyValuePairs
      req = ConfirmTransactionRiskRequestType.new(request_id, on_behalf_of_account_id, username, transaction_id, is_monetary_transaction, verify_method, key_value_pairs)
      feedback_risk_result_to_hash(@driver.confirmTransactionRisk(req))
    end

    private
    def evaluate_risk_result_to_hash(ret)
      ret_hash = {
        'StatusCode' => convert_endian(ret),
        'Message' => ret::statusMessage,
        'Risky' => ret::risky,
        'RiskScore' => ret::riskScore,
        'RiskThreshold' => ret::riskThreshold,
        'RiskReason' => ret::riskReason,
        'PolicyVersion' => ret::policyVersion,
        'EventID' => ret::eventId
      }
      if ret::keyValuePairs
        result_to_hash(ret::keyValuePairs).keys.sort.each do |e|
          ret_hash.store(e, result_to_hash(ret::keyValuePairs)[e])
        end
      end
      if (ret::detailMessage)
        ret_hash.store('ErrorDitail', ret::detailMessage)
      end
      return ret_hash
    end

    def evaluate_tr_risk_result_to_hash(ret)
      ret_hash = {
        'StatusCode' => convert_endian(ret),
        'Message' => ret::statusMessage,
        'Risky' => ret::risky,
        'RiskScore' => ret::riskScore,
        'RiskThreshold' => ret::riskThreshold,
        'RiskReason' => ret::riskReason,
        'PolicyVersion' => ret::policyVersion,
        'TransactionID' => ret::transactionId
      }
      if ret::keyValuePairs
        result_to_hash(ret::keyValuePairs).keys.sort.each do |e|
          ret_hash.store(e, result_to_hash(ret::keyValuePairs)[e])
        end
      end
      if (ret::detailMessage)
        ret_hash.store('ErrorDitail', ret::detailMessage)
      end
      return ret_hash
    end

    def feedback_risk_result_to_hash(ret)
      ret_hash = {
        'StatusCode' => convert_endian(ret),
        'Message' => ret::statusMessage,
      }
      if ret::keyValuePairs
        result_to_hash(ret::keyValuePairs).keys.sort.each do |e|
          ret_hash.store(e, result_to_hash(ret::keyValuePairs)[e])
        end
      end
      if (ret::detailMessage)
        ret_hash.store('ErrorDitail', ret::detailMessage)
      end
      return ret_hash
    end
    
    # エンディアン変換
    def convert_endian(ret)
      rcbyte = [ret::status].pack("H*")
      rcbyte = rcbyte.unpack("N*")
      rc = rcbyte.pack("N*")
      return rc
    end
    def result_to_hash(result)
      ret_hash = {}
      result.each do |e|
        ret_hash[e.key] = e.value
      end
      ret_hash
    end

  end
end
