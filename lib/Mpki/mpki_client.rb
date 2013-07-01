module Mpki::MpkiClient
  require "#{Rails.root}/lib/Mpki/userManagementServiceDriver.rb"

  class MpkiClient
    def initialize(uri_path)
      @driver = UserManagementOperations.new("https://pki-ws.symauth.com/" + uri_path)
      @driver.loadproperty("#{Rails.root}/config/mpki.properties")
    end

    def create_user(username)
      userAttribute = NameValueType.new("common_name", username)
      request_id = "abcd1234" # requestId
      version = "1.0" # version
      user_info = UserInformationType.new(username, nil, nil, nil, nil, nil, userAttribute)
      req = CreateOrUpdateUserRequestMessageType.new(request_id, user_info, version)
      create_user_result_to_hash(@driver.createOrUpdateUser(req))
    end
    
    def create_passcode(username, oid)
      request_id = "abcd1234" # requestId
      version = "1.0" # version
      passcode_info = PasscodeInformationType.new(nil, nil, nil, nil, nil, username, oid)
      req = CreateOrUpdatePasscodeRequestMessageType.new(request_id, passcode_info, version)
      create_passcode_result_to_hash(@driver.createOrUpdatePasscode(req))
    end

    private
    def create_user_result_to_hash(ret)
      ret_hash = {
        'clientTransactionID' => ret::clientTransactionID,
        'serverTransactionID' => ret::serverTransactionID,
        'seatId' => ret::userCreationStatus[0]::seatId,
        'statusCode' => ret::userCreationStatus[0]::statusCode,
        'version' => ret::version
      }
      return ret_hash
    end

    def create_passcode_result_to_hash(ret)
      ret_hash = {
        'clientTransactionID' => ret::clientTransactionID,
        'serverTransactionID' => ret::serverTransactionID,
        'passcode' => ret::passcodeCreationStatus[0]::passcodeInformation::passcode,
        'numberOfBadAttempts' => ret::passcodeCreationStatus[0]::passcodeInformation::numberOfBadAttempts,
        'passcodeStatus' => ret::passcodeCreationStatus[0]::passcodeInformation::passcodeStatus,
        'expiryDateTime' => ret::passcodeCreationStatus[0]::passcodeInformation::expiryDateTime.new_offset(Rational(+9,24)),
        'creationDateTime' => ret::passcodeCreationStatus[0]::passcodeInformation::creationDateTime.new_offset(Rational(+9,24)),
        'seatId' => ret::passcodeCreationStatus[0]::passcodeInformation::seatId,
        'certificateProfileOid' => ret::passcodeCreationStatus[0]::passcodeInformation::certificateProfileOid,
        'statusCode' => ret::passcodeCreationStatus[0]::statusCode,
        'version' => ret::version
      }
      return ret_hash
    end
  end
end
