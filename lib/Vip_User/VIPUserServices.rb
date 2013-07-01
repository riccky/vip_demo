require 'xsd/qname'

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}BaseRequestType
# abstract
#   requestId - (any)
class BaseRequestType
  attr_accessor :requestId

  def initialize(requestId = nil)
    @requestId = requestId
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}BaseRequestWithAccountIdType
# abstract
#   requestId - (any)
#   onBehalfOfAccountId - (any)
class BaseRequestWithAccountIdType < BaseRequestType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId

  def initialize(requestId = nil, onBehalfOfAccountId = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}CreateUserRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   pin - (any)
class CreateUserRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :pin

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, pin = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @pin = pin
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}UpdateUserRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   newUserId - (any)
#   newUserStatus - UserStatusEnum
#   oldPin - (any)
#   newPin - (any)
class UpdateUserRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :newUserId
  attr_accessor :newUserStatus
  attr_accessor :oldPin
  attr_accessor :newPin

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, newUserId = nil, newUserStatus = nil, oldPin = nil, newPin = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @newUserId = newUserId
    @newUserStatus = newUserStatus
    @oldPin = oldPin
    @newPin = newPin
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}DeleteUserRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
class DeleteUserRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}ClearUserPinRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
class ClearUserPinRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}AddCredentialRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   credentialDetail - CredentialDetailType
#   otpAuthData - OtpAuthDataType
class AddCredentialRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :credentialDetail
  attr_accessor :otpAuthData

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, credentialDetail = nil, otpAuthData = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @credentialDetail = credentialDetail
    @otpAuthData = otpAuthData
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}UpdateCredentialRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   credentialId - (any)
#   credentialType - CredentialTypeEnum
#   friendlyName - (any)
class UpdateCredentialRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :credentialId
  attr_accessor :credentialType
  attr_accessor :friendlyName

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, credentialId = nil, credentialType = nil, friendlyName = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @credentialId = credentialId
    @credentialType = credentialType
    @friendlyName = friendlyName
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}RemoveCredentialRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   credentialId - (any)
#   credentialType - CredentialTypeEnum
class RemoveCredentialRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :credentialId
  attr_accessor :credentialType

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, credentialId = nil, credentialType = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @credentialId = credentialId
    @credentialType = credentialType
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}GetUserInfoRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
class GetUserInfoRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}GetCredentialInfoRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   credentialId - (any)
#   credentialType - CredentialTypeEnum
class GetCredentialInfoRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :credentialId
  attr_accessor :credentialType

  def initialize(requestId = nil, onBehalfOfAccountId = nil, credentialId = nil, credentialType = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @credentialId = credentialId
    @credentialType = credentialType
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}AuthenticateUserRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   pin - (any)
#   otpAuthData - OtpAuthDataType
class AuthenticateUserRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :pin
  attr_accessor :otpAuthData

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, pin = nil, otpAuthData = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @pin = pin
    @otpAuthData = otpAuthData
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}SetTemporaryPasswordRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   temporaryPassword - (any)
#   temporaryPasswordAttributes - TemporaryPasswordAttributesType
#   smsDeliveryInfo - SmsDeliveryInfoType
#   voiceDeliveryInfo - VoiceDeliveryInfoType
class SetTemporaryPasswordRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :temporaryPassword
  attr_accessor :temporaryPasswordAttributes
  attr_accessor :smsDeliveryInfo
  attr_accessor :voiceDeliveryInfo

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, temporaryPassword = nil, temporaryPasswordAttributes = nil, smsDeliveryInfo = nil, voiceDeliveryInfo = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @temporaryPassword = temporaryPassword
    @temporaryPasswordAttributes = temporaryPasswordAttributes
    @smsDeliveryInfo = smsDeliveryInfo
    @voiceDeliveryInfo = voiceDeliveryInfo
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}ClearTemporaryPasswordRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
class ClearTemporaryPasswordRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}SetTemporaryPasswordAttributesRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   temporaryPasswordAttributes - TemporaryPasswordAttributesType
class SetTemporaryPasswordAttributesRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :temporaryPasswordAttributes

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, temporaryPasswordAttributes = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @temporaryPasswordAttributes = temporaryPasswordAttributes
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}GetTemporaryPasswordAttributesRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
class GetTemporaryPasswordAttributesRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}SendOtpRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   smsDeliveryInfo - SmsDeliveryInfoType
#   voiceDeliveryInfo - VoiceDeliveryInfoType
class SendOtpRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :smsDeliveryInfo
  attr_accessor :voiceDeliveryInfo

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, smsDeliveryInfo = nil, voiceDeliveryInfo = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @smsDeliveryInfo = smsDeliveryInfo
    @voiceDeliveryInfo = voiceDeliveryInfo
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}RegisterRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   smsDeliveryInfo - SmsDeliveryInfoType
#   voiceDeliveryInfo - VoiceDeliveryInfoType
#   serviceOtpDeliveryInfo - ServiceOtpDeliveryInfoType
class RegisterRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :smsDeliveryInfo
  attr_accessor :voiceDeliveryInfo
  attr_accessor :serviceOtpDeliveryInfo

  def initialize(requestId = nil, onBehalfOfAccountId = nil, smsDeliveryInfo = nil, voiceDeliveryInfo = nil, serviceOtpDeliveryInfo = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @smsDeliveryInfo = smsDeliveryInfo
    @voiceDeliveryInfo = voiceDeliveryInfo
    @serviceOtpDeliveryInfo = serviceOtpDeliveryInfo
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}EvaluateRiskRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   ip - (any)
#   userAgent - (any)
#   iAAuthData - (any)
#   keyValuePairs - KeyValuePairType
class EvaluateRiskRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :ip
  attr_accessor :userAgent
  attr_accessor :iAAuthData
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, ip = nil, userAgent = nil, iAAuthData = nil, keyValuePairs = [])
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @ip = ip
    @userAgent = userAgent
    @iAAuthData = iAAuthData
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}ConfirmRiskRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   eventId - (any)
#   verifyMethod - (any)
#   keyValuePairs - KeyValuePairType
class ConfirmRiskRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :eventId
  attr_accessor :verifyMethod
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, eventId = nil, verifyMethod = nil, keyValuePairs = [])
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @eventId = eventId
    @verifyMethod = verifyMethod
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}DenyRiskRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   eventId - (any)
#   verifyMethod - (any)
#   iAAuthData - (any)
#   rememberDevice - SOAP::SOAPBoolean
#   keyValuePairs - KeyValuePairType
class DenyRiskRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :eventId
  attr_accessor :verifyMethod
  attr_accessor :iAAuthData
  attr_accessor :rememberDevice
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, eventId = nil, verifyMethod = nil, iAAuthData = nil, rememberDevice = nil, keyValuePairs = [])
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @eventId = eventId
    @verifyMethod = verifyMethod
    @iAAuthData = iAAuthData
    @rememberDevice = rememberDevice
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}ConfirmTransactionRiskRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   transactionId - (any)
#   isMonetaryTransaction - SOAP::SOAPBoolean
#   verifyMethod - (any)
#   keyValuePairs - KeyValuePairType
class ConfirmTransactionRiskRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :transactionId
  attr_accessor :isMonetaryTransaction
  attr_accessor :verifyMethod
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, transactionId = nil, isMonetaryTransaction = nil, verifyMethod = nil, keyValuePairs = [])
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @transactionId = transactionId
    @isMonetaryTransaction = isMonetaryTransaction
    @verifyMethod = verifyMethod
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}DenyTransactionRiskRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   transactionId - (any)
#   isMonetaryTransaction - SOAP::SOAPBoolean
#   verifyMethod - (any)
#   keyValuePairs - KeyValuePairType
class DenyTransactionRiskRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :transactionId
  attr_accessor :isMonetaryTransaction
  attr_accessor :verifyMethod
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, transactionId = nil, isMonetaryTransaction = nil, verifyMethod = nil, keyValuePairs = [])
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @transactionId = transactionId
    @isMonetaryTransaction = isMonetaryTransaction
    @verifyMethod = verifyMethod
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}EvaluateNonMonetaryTransactionRiskRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   ip - (any)
#   userAgent - (any)
#   iAAuthData - (any)
#   keyValuePairs - KeyValuePairType
#   nonMonetaryTransaction - NonMonetaryTransactionType
class EvaluateNonMonetaryTransactionRiskRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :ip
  attr_accessor :userAgent
  attr_accessor :iAAuthData
  attr_accessor :keyValuePairs
  attr_accessor :nonMonetaryTransaction

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, ip = nil, userAgent = nil, iAAuthData = nil, keyValuePairs = [], nonMonetaryTransaction = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @ip = ip
    @userAgent = userAgent
    @iAAuthData = iAAuthData
    @keyValuePairs = keyValuePairs
    @nonMonetaryTransaction = nonMonetaryTransaction
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}EvaluateMonetaryTransactionRiskRequestType
#   requestId - (any)
#   onBehalfOfAccountId - (any)
#   userId - (any)
#   ip - (any)
#   userAgent - (any)
#   iAAuthData - (any)
#   keyValuePairs - KeyValuePairType
#   monetaryTransaction - MonetaryTransactionType
class EvaluateMonetaryTransactionRiskRequestType < BaseRequestWithAccountIdType
  attr_accessor :requestId
  attr_accessor :onBehalfOfAccountId
  attr_accessor :userId
  attr_accessor :ip
  attr_accessor :userAgent
  attr_accessor :iAAuthData
  attr_accessor :keyValuePairs
  attr_accessor :monetaryTransaction

  def initialize(requestId = nil, onBehalfOfAccountId = nil, userId = nil, ip = nil, userAgent = nil, iAAuthData = nil, keyValuePairs = [], monetaryTransaction = nil)
    @requestId = requestId
    @onBehalfOfAccountId = onBehalfOfAccountId
    @userId = userId
    @ip = ip
    @userAgent = userAgent
    @iAAuthData = iAAuthData
    @keyValuePairs = keyValuePairs
    @monetaryTransaction = monetaryTransaction
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}GetServerTimeRequestType
#   requestId - (any)
class GetServerTimeRequestType < BaseRequestType
  attr_accessor :requestId

  def initialize(requestId = nil)
    @requestId = requestId
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}BaseResponseType
# abstract
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
class BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}GetServerTimeResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   timestamp - SOAP::SOAPDateTime
class GetServerTimeResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :timestamp

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, timestamp = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @timestamp = timestamp
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}CreateUserResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
class CreateUserResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}UpdateUserResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
class UpdateUserResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}DeleteUserResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
class DeleteUserResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}ClearUserPinResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
class ClearUserPinResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}AddCredentialResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
class AddCredentialResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}UpdateCredentialResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
class UpdateCredentialResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}RemoveCredentialResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
class RemoveCredentialResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}GetUserInfoResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   userId - (any)
#   userCreationTime - SOAP::SOAPDateTime
#   userStatus - UserStatusEnum
#   numBindings - SOAP::SOAPInteger
#   credentialBindingDetail - CredentialBindingDetailType
#   isPinSet - SOAP::SOAPBoolean
class GetUserInfoResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :userId
  attr_accessor :userCreationTime
  attr_accessor :userStatus
  attr_accessor :numBindings
  attr_accessor :credentialBindingDetail
  attr_accessor :isPinSet

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, userId = nil, userCreationTime = nil, userStatus = nil, numBindings = nil, credentialBindingDetail = [], isPinSet = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @userId = userId
    @userCreationTime = userCreationTime
    @userStatus = userStatus
    @numBindings = numBindings
    @credentialBindingDetail = credentialBindingDetail
    @isPinSet = isPinSet
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}GetCredentialInfoResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   credentialId - (any)
#   credentialType - CredentialTypeEnum
#   credentialStatus - (any)
#   numBindings - SOAP::SOAPInteger
#   userBindingDetail - UserBindingDetailType
class GetCredentialInfoResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :credentialId
  attr_accessor :credentialType
  attr_accessor :credentialStatus
  attr_accessor :numBindings
  attr_accessor :userBindingDetail

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, credentialId = nil, credentialType = nil, credentialStatus = nil, numBindings = nil, userBindingDetail = [])
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @credentialId = credentialId
    @credentialType = credentialType
    @credentialStatus = credentialStatus
    @numBindings = numBindings
    @userBindingDetail = userBindingDetail
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}AuthenticateUserResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   credentialId - (any)
#   credentialType - CredentialTypeEnum
#   authnId - (any)
class AuthenticateUserResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :credentialId
  attr_accessor :credentialType
  attr_accessor :authnId

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, credentialId = nil, credentialType = nil, authnId = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @credentialId = credentialId
    @credentialType = credentialType
    @authnId = authnId
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}SetTemporaryPasswordResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   temporaryPassword - (any)
class SetTemporaryPasswordResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :temporaryPassword

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, temporaryPassword = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @temporaryPassword = temporaryPassword
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}ClearTemporaryPasswordResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
class ClearTemporaryPasswordResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}SetTemporaryPasswordAttributesResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
class SetTemporaryPasswordAttributesResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}GetTemporaryPasswordAttributesResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   tempPwdAttributes - TemporaryPasswordAttributesType
class GetTemporaryPasswordAttributesResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :tempPwdAttributes

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, tempPwdAttributes = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @tempPwdAttributes = tempPwdAttributes
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}SendOtpResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
class SendOtpResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}RegisterResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   otp - (any)
class RegisterResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :otp

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, otp = nil)
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @otp = otp
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}EvaluateRiskResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   risky - SOAP::SOAPBoolean
#   riskScore - (any)
#   riskThreshold - (any)
#   riskReason - SOAP::SOAPString
#   policyVersion - SOAP::SOAPString
#   eventId - (any)
#   keyValuePairs - KeyValuePairType
class EvaluateRiskResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :risky
  attr_accessor :riskScore
  attr_accessor :riskThreshold
  attr_accessor :riskReason
  attr_accessor :policyVersion
  attr_accessor :eventId
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, risky = nil, riskScore = nil, riskThreshold = nil, riskReason = nil, policyVersion = nil, eventId = nil, keyValuePairs = [])
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @risky = risky
    @riskScore = riskScore
    @riskThreshold = riskThreshold
    @riskReason = riskReason
    @policyVersion = policyVersion
    @eventId = eventId
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}ConfirmRiskResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   keyValuePairs - KeyValuePairType
class ConfirmRiskResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, keyValuePairs = [])
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}DenyRiskResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   keyValuePairs - KeyValuePairType
class DenyRiskResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, keyValuePairs = [])
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}ConfirmTransactionRiskResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   keyValuePairs - KeyValuePairType
class ConfirmTransactionRiskResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, keyValuePairs = [])
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}DenyTransactionRiskResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   keyValuePairs - KeyValuePairType
class DenyTransactionRiskResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, keyValuePairs = [])
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}EvaluateNonMonetaryTransactionRiskResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   risky - SOAP::SOAPBoolean
#   riskScore - (any)
#   riskThreshold - (any)
#   riskReason - SOAP::SOAPString
#   policyVersion - SOAP::SOAPString
#   transactionId - (any)
#   keyValuePairs - KeyValuePairType
class EvaluateNonMonetaryTransactionRiskResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :risky
  attr_accessor :riskScore
  attr_accessor :riskThreshold
  attr_accessor :riskReason
  attr_accessor :policyVersion
  attr_accessor :transactionId
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, risky = nil, riskScore = nil, riskThreshold = nil, riskReason = nil, policyVersion = nil, transactionId = nil, keyValuePairs = [])
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @risky = risky
    @riskScore = riskScore
    @riskThreshold = riskThreshold
    @riskReason = riskReason
    @policyVersion = policyVersion
    @transactionId = transactionId
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}EvaluateMonetaryTransactionRiskResponseType
#   requestId - (any)
#   status - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   detail - SOAP::SOAPHexBinary
#   detailMessage - SOAP::SOAPString
#   risky - SOAP::SOAPBoolean
#   riskScore - (any)
#   riskThreshold - (any)
#   riskReason - SOAP::SOAPString
#   policyVersion - SOAP::SOAPString
#   transactionId - (any)
#   keyValuePairs - KeyValuePairType
class EvaluateMonetaryTransactionRiskResponseType < BaseResponseType
  attr_accessor :requestId
  attr_accessor :status
  attr_accessor :statusMessage
  attr_accessor :detail
  attr_accessor :detailMessage
  attr_accessor :risky
  attr_accessor :riskScore
  attr_accessor :riskThreshold
  attr_accessor :riskReason
  attr_accessor :policyVersion
  attr_accessor :transactionId
  attr_accessor :keyValuePairs

  def initialize(requestId = nil, status = nil, statusMessage = nil, detail = nil, detailMessage = nil, risky = nil, riskScore = nil, riskThreshold = nil, riskReason = nil, policyVersion = nil, transactionId = nil, keyValuePairs = [])
    @requestId = requestId
    @status = status
    @statusMessage = statusMessage
    @detail = detail
    @detailMessage = detailMessage
    @risky = risky
    @riskScore = riskScore
    @riskThreshold = riskThreshold
    @riskReason = riskReason
    @policyVersion = policyVersion
    @transactionId = transactionId
    @keyValuePairs = keyValuePairs
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}KeyValuePairType
#   key - (any)
#   value - (any)
class KeyValuePairType
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}CredentialDetailType
#   credentialId - (any)
#   credentialType - CredentialTypeEnum
#   friendlyName - (any)
class CredentialDetailType
  attr_accessor :credentialId
  attr_accessor :credentialType
  attr_accessor :friendlyName

  def initialize(credentialId = nil, credentialType = nil, friendlyName = nil)
    @credentialId = credentialId
    @credentialType = credentialType
    @friendlyName = friendlyName
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}BindingDetailType
#   bindStatus - BindStatusEnum
#   friendlyName - (any)
#   lastBindTime - SOAP::SOAPDateTime
#   lastAuthnTime - SOAP::SOAPDateTime
#   lastAuthnId - (any)
class BindingDetailType
  attr_accessor :bindStatus
  attr_accessor :friendlyName
  attr_accessor :lastBindTime
  attr_accessor :lastAuthnTime
  attr_accessor :lastAuthnId

  def initialize(bindStatus = nil, friendlyName = nil, lastBindTime = nil, lastAuthnTime = nil, lastAuthnId = nil)
    @bindStatus = bindStatus
    @friendlyName = friendlyName
    @lastBindTime = lastBindTime
    @lastAuthnTime = lastAuthnTime
    @lastAuthnId = lastAuthnId
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}CredentialBindingDetailType
#   credentialId - (any)
#   credentialType - CredentialTypeEnum
#   credentialStatus - (any)
#   bindingDetail - BindingDetailType
class CredentialBindingDetailType
  attr_accessor :credentialId
  attr_accessor :credentialType
  attr_accessor :credentialStatus
  attr_accessor :bindingDetail

  def initialize(credentialId = nil, credentialType = nil, credentialStatus = nil, bindingDetail = nil)
    @credentialId = credentialId
    @credentialType = credentialType
    @credentialStatus = credentialStatus
    @bindingDetail = bindingDetail
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}UserBindingDetailType
#   userId - (any)
#   userStatus - UserStatusEnum
#   bindingDetail - BindingDetailType
class UserBindingDetailType
  attr_accessor :userId
  attr_accessor :userStatus
  attr_accessor :bindingDetail

  def initialize(userId = nil, userStatus = nil, bindingDetail = nil)
    @userId = userId
    @userStatus = userStatus
    @bindingDetail = bindingDetail
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}AbstractAuthDataType
# abstract
class AbstractAuthDataType
  def initialize
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}OtpAuthDataType
#   otp - (any)
#   otp2 - (any)
class OtpAuthDataType < AbstractAuthDataType
  attr_accessor :otp
  attr_accessor :otp2

  def initialize(otp = nil, otp2 = nil)
    @otp = otp
    @otp2 = otp2
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}TemporaryPasswordAttributesType
#   expirationTime - SOAP::SOAPDateTime
#   oneTimeUseOnly - SOAP::SOAPBoolean
class TemporaryPasswordAttributesType
  attr_accessor :expirationTime
  attr_accessor :oneTimeUseOnly

  def initialize(expirationTime = nil, oneTimeUseOnly = nil)
    @expirationTime = expirationTime
    @oneTimeUseOnly = oneTimeUseOnly
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}DestinationType
#   xmlattr_type - SOAP::SOAPString
class DestinationType < ::String
  AttrType = XSD::QName.new(nil, "type")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_type
    __xmlattr[AttrType]
  end

  def xmlattr_type=(value)
    __xmlattr[AttrType] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}SmsDeliveryInfoType
#   phoneNumber - (any)
#   smsFrom - (any)
#   messageTemplate - (any)
#   gatewayAcctInfo - GatewayAcctInfoType
class SmsDeliveryInfoType
  attr_accessor :phoneNumber
  attr_accessor :smsFrom
  attr_accessor :messageTemplate
  attr_accessor :gatewayAcctInfo

  def initialize(phoneNumber = nil, smsFrom = nil, messageTemplate = nil, gatewayAcctInfo = nil)
    @phoneNumber = phoneNumber
    @smsFrom = smsFrom
    @messageTemplate = messageTemplate
    @gatewayAcctInfo = gatewayAcctInfo
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}GatewayAcctInfoType
#   id - SOAP::SOAPString
#   password - SOAP::SOAPString
class GatewayAcctInfoType
  attr_accessor :id
  attr_accessor :password

  def initialize(id = nil, password = nil)
    @id = id
    @password = password
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}VoiceDeliveryInfoType
#   phoneNumber - (any)
#   language - SOAP::SOAPLanguage
class VoiceDeliveryInfoType
  attr_accessor :phoneNumber
  attr_accessor :language

  def initialize(phoneNumber = nil, language = nil)
    @phoneNumber = phoneNumber
    @language = language
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}ServiceOtpDeliveryInfoType
#   id - (any)
class ServiceOtpDeliveryInfoType
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}MonetaryTransactionType
#   sourceAccount - Account
#   destinationAccount - Account
#   eventId - (any)
#   transactionAmount - (any)
#   accountBalance - (any)
#   transactionType - TransactionType
#   channelType - MonetaryTransactionChannelType
class MonetaryTransactionType
  attr_accessor :sourceAccount
  attr_accessor :destinationAccount
  attr_accessor :eventId
  attr_accessor :transactionAmount
  attr_accessor :accountBalance
  attr_accessor :transactionType
  attr_accessor :channelType

  def initialize(sourceAccount = nil, destinationAccount = nil, eventId = nil, transactionAmount = nil, accountBalance = nil, transactionType = nil, channelType = nil)
    @sourceAccount = sourceAccount
    @destinationAccount = destinationAccount
    @eventId = eventId
    @transactionAmount = transactionAmount
    @accountBalance = accountBalance
    @transactionType = transactionType
    @channelType = channelType
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}NonMonetaryTransactionType
#   sourceAccount - Account
#   eventId - (any)
#   changeType - ChangeType
#   channelType - NonMonetaryTransactionChannelType
class NonMonetaryTransactionType
  attr_accessor :sourceAccount
  attr_accessor :eventId
  attr_accessor :changeType
  attr_accessor :channelType

  def initialize(sourceAccount = nil, eventId = nil, changeType = nil, channelType = nil)
    @sourceAccount = sourceAccount
    @eventId = eventId
    @changeType = changeType
    @channelType = channelType
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}Account
#   accountName - (any)
#   bankID - (any)
#   accountType - AccountType
#   accountDescription - (any)
#   accountCreationDate - SOAP::SOAPDate
class Account
  attr_accessor :accountName
  attr_accessor :bankID
  attr_accessor :accountType
  attr_accessor :accountDescription
  attr_accessor :accountCreationDate

  def initialize(accountName = nil, bankID = nil, accountType = nil, accountDescription = nil, accountCreationDate = nil)
    @accountName = accountName
    @bankID = bankID
    @accountType = accountType
    @accountDescription = accountDescription
    @accountCreationDate = accountCreationDate
  end
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}CredentialTypeEnum
class CredentialTypeEnum < ::String
  CERTIFICATE = CredentialTypeEnum.new("CERTIFICATE")
  SERVICE_OTP = CredentialTypeEnum.new("SERVICE_OTP")
  SMS_OTP = CredentialTypeEnum.new("SMS_OTP")
  STANDARD_OTP = CredentialTypeEnum.new("STANDARD_OTP")
  VOICE_OTP = CredentialTypeEnum.new("VOICE_OTP")
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}UserStatusEnum
class UserStatusEnum < ::String
  ACTIVE = UserStatusEnum.new("ACTIVE")
  DISABLED = UserStatusEnum.new("DISABLED")
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}BindStatusEnum
class BindStatusEnum < ::String
  DISABLED = BindStatusEnum.new("DISABLED")
  ENABLED = BindStatusEnum.new("ENABLED")
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}TransactionType
class TransactionType < ::String
  BILLPAYMENT = TransactionType.new("BILLPAYMENT")
  CHECKREQUEST = TransactionType.new("CHECKREQUEST")
  ELECTRONICREALTIMEBANKTRANSFER = TransactionType.new("ELECTRONICREALTIMEBANKTRANSFER")
  JOURNALING = TransactionType.new("JOURNALING")
  OTHER = TransactionType.new("OTHER")
  WIRETRANSFER = TransactionType.new("WIRETRANSFER")
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}AccountType
class AccountType < ::String
  BUSINESS = AccountType.new("BUSINESS")
  CHECKING = AccountType.new("CHECKING")
  OTHER = AccountType.new("OTHER")
  SAVINGS = AccountType.new("SAVINGS")
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}MonetaryTransactionChannelType
class MonetaryTransactionChannelType < ::String
  ATM = MonetaryTransactionChannelType.new("ATM")
  MOBILE = MonetaryTransactionChannelType.new("MOBILE")
  OTHER = MonetaryTransactionChannelType.new("OTHER")
  PHONE = MonetaryTransactionChannelType.new("PHONE")
  TELLER = MonetaryTransactionChannelType.new("TELLER")
  WEB = MonetaryTransactionChannelType.new("WEB")
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}NonMonetaryTransactionChannelType
class NonMonetaryTransactionChannelType < ::String
  MOBILE = NonMonetaryTransactionChannelType.new("MOBILE")
  OTHER = NonMonetaryTransactionChannelType.new("OTHER")
  PHONE = NonMonetaryTransactionChannelType.new("PHONE")
  WEB = NonMonetaryTransactionChannelType.new("WEB")
end

# {http://schemas.verisign.com/vip/2011/04/vipuserservices}ChangeType
class ChangeType < ::String
  ADDRESS = ChangeType.new("ADDRESS")
  EMAIL = ChangeType.new("EMAIL")
  OTHER = ChangeType.new("OTHER")
  PASSWORD = ChangeType.new("PASSWORD")
  PHONE = ChangeType.new("PHONE")
  SECURITYANSWER = ChangeType.new("SECURITYANSWER")
  SECURITYQUESTION = ChangeType.new("SECURITYQUESTION")
  USERNAME = ChangeType.new("USERNAME")
end
