require "#{Rails.root}/lib/Vip_User/VIPUserServices.rb"
require 'soap/mapping'

module VIPUserServicesMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsVipuserservices = "http://schemas.verisign.com/vip/2011/04/vipuserservices"

  EncodedRegistry.register(
    :class => GetServerTimeRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetServerTimeRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestType"),
    :schema_element => [
      ["requestId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => GetServerTimeResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetServerTimeResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["timestamp", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CreateUserRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "CreateUserRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["pin", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CreateUserResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "CreateUserResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UpdateUserRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "UpdateUserRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["newUserId", nil, [0, 1]],
      ["newUserStatus", "UserStatusEnum", [0, 1]],
      ["oldPin", nil, [0, 1]],
      ["newPin", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UpdateUserResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "UpdateUserResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DeleteUserRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DeleteUserRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => DeleteUserResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DeleteUserResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ClearUserPinRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ClearUserPinRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => ClearUserPinResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ClearUserPinResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AddCredentialRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "AddCredentialRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["credentialDetail", "CredentialDetailType"],
      [ :choice,
        ["otpAuthData", "OtpAuthDataType"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => AddCredentialResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "AddCredentialResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UpdateCredentialRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "UpdateCredentialRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"],
      ["friendlyName", nil]
    ]
  )

  EncodedRegistry.register(
    :class => UpdateCredentialResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "UpdateCredentialResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoveCredentialRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "RemoveCredentialRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"]
    ]
  )

  EncodedRegistry.register(
    :class => RemoveCredentialResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "RemoveCredentialResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetUserInfoRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetUserInfoRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => GetUserInfoResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetUserInfoResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["userId", nil, [0, 1]],
      ["userCreationTime", "SOAP::SOAPDateTime", [0, 1]],
      ["userStatus", "UserStatusEnum", [0, 1]],
      ["numBindings", "SOAP::SOAPInteger", [0, 1]],
      ["credentialBindingDetail", "CredentialBindingDetailType[]", [0, nil]],
      ["isPinSet", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetCredentialInfoRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetCredentialInfoRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"]
    ]
  )

  EncodedRegistry.register(
    :class => GetCredentialInfoResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetCredentialInfoResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["credentialId", nil, [0, 1]],
      ["credentialType", "CredentialTypeEnum", [0, 1]],
      ["credentialStatus", nil, [0, 1]],
      ["numBindings", "SOAP::SOAPInteger", [0, 1]],
      ["userBindingDetail", "UserBindingDetailType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AuthenticateUserRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "AuthenticateUserRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["pin", nil, [0, 1]],
      [ :choice,
        ["otpAuthData", "OtpAuthDataType"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => AuthenticateUserResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "AuthenticateUserResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["credentialId", nil, [0, 1]],
      ["credentialType", "CredentialTypeEnum", [0, 1]],
      ["authnId", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SetTemporaryPasswordRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["temporaryPassword", nil, [0, 1]],
      ["temporaryPasswordAttributes", "TemporaryPasswordAttributesType", [0, 1]],
      [ :choice,
        ["smsDeliveryInfo", "SmsDeliveryInfoType", [0, 1]],
        ["voiceDeliveryInfo", "VoiceDeliveryInfoType", [0, 1]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => SetTemporaryPasswordResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["temporaryPassword", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ClearTemporaryPasswordRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ClearTemporaryPasswordRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => ClearTemporaryPasswordResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ClearTemporaryPasswordResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SetTemporaryPasswordAttributesRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordAttributesRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["temporaryPasswordAttributes", "TemporaryPasswordAttributesType"]
    ]
  )

  EncodedRegistry.register(
    :class => SetTemporaryPasswordAttributesResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordAttributesResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetTemporaryPasswordAttributesRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetTemporaryPasswordAttributesRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => GetTemporaryPasswordAttributesResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetTemporaryPasswordAttributesResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["tempPwdAttributes", "TemporaryPasswordAttributesType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SendOtpRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SendOtpRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      [ :choice,
        ["smsDeliveryInfo", "SmsDeliveryInfoType", [0, 1]],
        ["voiceDeliveryInfo", "VoiceDeliveryInfoType", [0, 1]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => SendOtpResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SendOtpResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => RegisterRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "RegisterRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      [ :choice,
        ["smsDeliveryInfo", "SmsDeliveryInfoType"],
        ["voiceDeliveryInfo", "VoiceDeliveryInfoType"],
        ["serviceOtpDeliveryInfo", "ServiceOtpDeliveryInfoType"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => RegisterResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "RegisterResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["otp", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => EvaluateRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["ip", [nil, XSD::QName.new(NsVipuserservices, "Ip")]],
      ["userAgent", [nil, XSD::QName.new(NsVipuserservices, "UserAgent")]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => EvaluateRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["risky", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "Risky")], [0, 1]],
      ["riskScore", [nil, XSD::QName.new(NsVipuserservices, "RiskScore")], [0, 1]],
      ["riskThreshold", [nil, XSD::QName.new(NsVipuserservices, "RiskThreshold")], [0, 1]],
      ["riskReason", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "RiskReason")], [0, 1]],
      ["policyVersion", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "PolicyVersion")], [0, 1]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => ConfirmRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ConfirmRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => ConfirmRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ConfirmRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => DenyRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DenyRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["rememberDevice", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "RememberDevice")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => DenyRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DenyRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => ConfirmTransactionRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ConfirmTransactionRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")]],
      ["isMonetaryTransaction", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "IsMonetaryTransaction")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => ConfirmTransactionRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ConfirmTransactionRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => DenyTransactionRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DenyTransactionRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")]],
      ["isMonetaryTransaction", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "IsMonetaryTransaction")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => DenyTransactionRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DenyTransactionRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => EvaluateNonMonetaryTransactionRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateNonMonetaryTransactionRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["ip", [nil, XSD::QName.new(NsVipuserservices, "Ip")], [0, 1]],
      ["userAgent", [nil, XSD::QName.new(NsVipuserservices, "UserAgent")], [0, 1]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]],
      ["nonMonetaryTransaction", ["NonMonetaryTransactionType", XSD::QName.new(NsVipuserservices, "NonMonetaryTransaction")]]
    ]
  )

  EncodedRegistry.register(
    :class => EvaluateNonMonetaryTransactionRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateNonMonetaryTransactionRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["risky", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "Risky")], [0, 1]],
      ["riskScore", [nil, XSD::QName.new(NsVipuserservices, "RiskScore")], [0, 1]],
      ["riskThreshold", [nil, XSD::QName.new(NsVipuserservices, "RiskThreshold")], [0, 1]],
      ["riskReason", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "RiskReason")], [0, 1]],
      ["policyVersion", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "PolicyVersion")], [0, 1]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => EvaluateMonetaryTransactionRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateMonetaryTransactionRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["ip", [nil, XSD::QName.new(NsVipuserservices, "Ip")], [0, 1]],
      ["userAgent", [nil, XSD::QName.new(NsVipuserservices, "UserAgent")], [0, 1]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]],
      ["monetaryTransaction", ["MonetaryTransactionType", XSD::QName.new(NsVipuserservices, "MonetaryTransaction")]]
    ]
  )

  EncodedRegistry.register(
    :class => EvaluateMonetaryTransactionRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateMonetaryTransactionRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["risky", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "Risky")], [0, 1]],
      ["riskScore", [nil, XSD::QName.new(NsVipuserservices, "RiskScore")], [0, 1]],
      ["riskThreshold", [nil, XSD::QName.new(NsVipuserservices, "RiskThreshold")], [0, 1]],
      ["riskReason", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "RiskReason")], [0, 1]],
      ["policyVersion", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "PolicyVersion")], [0, 1]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  EncodedRegistry.register(
    :class => KeyValuePairType,
    :schema_type => XSD::QName.new(NsVipuserservices, "KeyValuePairType"),
    :schema_element => [
      ["key", [nil, XSD::QName.new(NsVipuserservices, "Key")]],
      ["value", [nil, XSD::QName.new(NsVipuserservices, "Value")]]
    ]
  )

  EncodedRegistry.register(
    :class => CredentialDetailType,
    :schema_type => XSD::QName.new(NsVipuserservices, "CredentialDetailType"),
    :schema_element => [
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"],
      ["friendlyName", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BindingDetailType,
    :schema_type => XSD::QName.new(NsVipuserservices, "BindingDetailType"),
    :schema_element => [
      ["bindStatus", "BindStatusEnum"],
      ["friendlyName", nil, [0, 1]],
      ["lastBindTime", "SOAP::SOAPDateTime"],
      ["lastAuthnTime", "SOAP::SOAPDateTime", [0, 1]],
      ["lastAuthnId", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CredentialBindingDetailType,
    :schema_type => XSD::QName.new(NsVipuserservices, "CredentialBindingDetailType"),
    :schema_element => [
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"],
      ["credentialStatus", nil, [0, 1]],
      ["bindingDetail", "BindingDetailType"]
    ]
  )

  EncodedRegistry.register(
    :class => UserBindingDetailType,
    :schema_type => XSD::QName.new(NsVipuserservices, "UserBindingDetailType"),
    :schema_element => [
      ["userId", nil],
      ["userStatus", "UserStatusEnum"],
      ["bindingDetail", "BindingDetailType"]
    ]
  )

  EncodedRegistry.register(
    :class => OtpAuthDataType,
    :schema_type => XSD::QName.new(NsVipuserservices, "OtpAuthDataType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "AbstractAuthDataType"),
    :schema_element => [
      ["otp", nil],
      ["otp2", nil, [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TemporaryPasswordAttributesType,
    :schema_type => XSD::QName.new(NsVipuserservices, "TemporaryPasswordAttributesType"),
    :schema_element => [
      ["expirationTime", "SOAP::SOAPDateTime", [0, 1]],
      ["oneTimeUseOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DestinationType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DestinationType"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => SmsDeliveryInfoType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SmsDeliveryInfoType"),
    :schema_element => [
      ["phoneNumber", nil],
      ["smsFrom", nil, [0, 1]],
      ["messageTemplate", nil, [0, 1]],
      ["gatewayAcctInfo", "GatewayAcctInfoType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GatewayAcctInfoType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GatewayAcctInfoType"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "Id")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "Password")]]
    ]
  )

  EncodedRegistry.register(
    :class => VoiceDeliveryInfoType,
    :schema_type => XSD::QName.new(NsVipuserservices, "VoiceDeliveryInfoType"),
    :schema_element => [
      ["phoneNumber", nil],
      ["language", ["SOAP::SOAPLanguage", XSD::QName.new(NsVipuserservices, "Language")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceOtpDeliveryInfoType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ServiceOtpDeliveryInfoType"),
    :schema_element => [
      ["id", nil]
    ]
  )

  EncodedRegistry.register(
    :class => MonetaryTransactionType,
    :schema_type => XSD::QName.new(NsVipuserservices, "MonetaryTransactionType"),
    :schema_element => [
      ["sourceAccount", ["Account", XSD::QName.new(NsVipuserservices, "SourceAccount")]],
      ["destinationAccount", ["Account", XSD::QName.new(NsVipuserservices, "DestinationAccount")]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")], [0, 1]],
      ["transactionAmount", [nil, XSD::QName.new(NsVipuserservices, "TransactionAmount")]],
      ["accountBalance", [nil, XSD::QName.new(NsVipuserservices, "AccountBalance")], [0, 1]],
      ["transactionType", ["TransactionType", XSD::QName.new(NsVipuserservices, "TransactionType")]],
      ["channelType", ["MonetaryTransactionChannelType", XSD::QName.new(NsVipuserservices, "ChannelType")]]
    ]
  )

  EncodedRegistry.register(
    :class => NonMonetaryTransactionType,
    :schema_type => XSD::QName.new(NsVipuserservices, "NonMonetaryTransactionType"),
    :schema_element => [
      ["sourceAccount", ["Account", XSD::QName.new(NsVipuserservices, "SourceAccount")], [0, 1]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")], [0, 1]],
      ["changeType", ["ChangeType", XSD::QName.new(NsVipuserservices, "ChangeType")]],
      ["channelType", ["NonMonetaryTransactionChannelType", XSD::QName.new(NsVipuserservices, "ChannelType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Account,
    :schema_type => XSD::QName.new(NsVipuserservices, "Account"),
    :schema_element => [
      ["accountName", [nil, XSD::QName.new(NsVipuserservices, "AccountName")]],
      ["bankID", [nil, XSD::QName.new(NsVipuserservices, "BankID")]],
      ["accountType", ["AccountType", XSD::QName.new(NsVipuserservices, "AccountType")]],
      ["accountDescription", [nil, XSD::QName.new(NsVipuserservices, "AccountDescription")], [0, 1]],
      ["accountCreationDate", ["SOAP::SOAPDate", XSD::QName.new(NsVipuserservices, "AccountCreationDate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CredentialTypeEnum,
    :schema_type => XSD::QName.new(NsVipuserservices, "CredentialTypeEnum")
  )

  EncodedRegistry.register(
    :class => UserStatusEnum,
    :schema_type => XSD::QName.new(NsVipuserservices, "UserStatusEnum")
  )

  EncodedRegistry.register(
    :class => BindStatusEnum,
    :schema_type => XSD::QName.new(NsVipuserservices, "BindStatusEnum")
  )

  EncodedRegistry.register(
    :class => TransactionType,
    :schema_type => XSD::QName.new(NsVipuserservices, "TransactionType")
  )

  EncodedRegistry.register(
    :class => AccountType,
    :schema_type => XSD::QName.new(NsVipuserservices, "AccountType")
  )

  EncodedRegistry.register(
    :class => MonetaryTransactionChannelType,
    :schema_type => XSD::QName.new(NsVipuserservices, "MonetaryTransactionChannelType")
  )

  EncodedRegistry.register(
    :class => NonMonetaryTransactionChannelType,
    :schema_type => XSD::QName.new(NsVipuserservices, "NonMonetaryTransactionChannelType")
  )

  EncodedRegistry.register(
    :class => ChangeType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ChangeType")
  )

  LiteralRegistry.register(
    :class => GetServerTimeRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetServerTimeRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestType"),
    :schema_element => [
      ["requestId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GetServerTimeResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetServerTimeResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["timestamp", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateUserRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "CreateUserRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["pin", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateUserResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "CreateUserResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateUserRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "UpdateUserRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["newUserId", nil, [0, 1]],
      ["newUserStatus", "UserStatusEnum", [0, 1]],
      ["oldPin", nil, [0, 1]],
      ["newPin", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateUserResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "UpdateUserResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteUserRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DeleteUserRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteUserResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DeleteUserResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClearUserPinRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ClearUserPinRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ClearUserPinResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ClearUserPinResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddCredentialRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "AddCredentialRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["credentialDetail", "CredentialDetailType"],
      [ :choice,
        ["otpAuthData", "OtpAuthDataType"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => AddCredentialResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "AddCredentialResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateCredentialRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "UpdateCredentialRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"],
      ["friendlyName", nil]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateCredentialResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "UpdateCredentialResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveCredentialRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "RemoveCredentialRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveCredentialResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "RemoveCredentialResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfoRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetUserInfoRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfoResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetUserInfoResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["userId", nil, [0, 1]],
      ["userCreationTime", "SOAP::SOAPDateTime", [0, 1]],
      ["userStatus", "UserStatusEnum", [0, 1]],
      ["numBindings", "SOAP::SOAPInteger", [0, 1]],
      ["credentialBindingDetail", "CredentialBindingDetailType[]", [0, nil]],
      ["isPinSet", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCredentialInfoRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetCredentialInfoRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCredentialInfoResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetCredentialInfoResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["credentialId", nil, [0, 1]],
      ["credentialType", "CredentialTypeEnum", [0, 1]],
      ["credentialStatus", nil, [0, 1]],
      ["numBindings", "SOAP::SOAPInteger", [0, 1]],
      ["userBindingDetail", "UserBindingDetailType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticateUserRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "AuthenticateUserRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["pin", nil, [0, 1]],
      [ :choice,
        ["otpAuthData", "OtpAuthDataType"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticateUserResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "AuthenticateUserResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["credentialId", nil, [0, 1]],
      ["credentialType", "CredentialTypeEnum", [0, 1]],
      ["authnId", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetTemporaryPasswordRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["temporaryPassword", nil, [0, 1]],
      ["temporaryPasswordAttributes", "TemporaryPasswordAttributesType", [0, 1]],
      [ :choice,
        ["smsDeliveryInfo", "SmsDeliveryInfoType", [0, 1]],
        ["voiceDeliveryInfo", "VoiceDeliveryInfoType", [0, 1]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => SetTemporaryPasswordResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["temporaryPassword", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClearTemporaryPasswordRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ClearTemporaryPasswordRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ClearTemporaryPasswordResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ClearTemporaryPasswordResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetTemporaryPasswordAttributesRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordAttributesRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["temporaryPasswordAttributes", "TemporaryPasswordAttributesType"]
    ]
  )

  LiteralRegistry.register(
    :class => SetTemporaryPasswordAttributesResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordAttributesResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTemporaryPasswordAttributesRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetTemporaryPasswordAttributesRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GetTemporaryPasswordAttributesResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GetTemporaryPasswordAttributesResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["tempPwdAttributes", "TemporaryPasswordAttributesType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SendOtpRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SendOtpRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      [ :choice,
        ["smsDeliveryInfo", "SmsDeliveryInfoType", [0, 1]],
        ["voiceDeliveryInfo", "VoiceDeliveryInfoType", [0, 1]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => SendOtpResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SendOtpResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RegisterRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "RegisterRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      [ :choice,
        ["smsDeliveryInfo", "SmsDeliveryInfoType"],
        ["voiceDeliveryInfo", "VoiceDeliveryInfoType"],
        ["serviceOtpDeliveryInfo", "ServiceOtpDeliveryInfoType"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => RegisterResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "RegisterResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["otp", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["ip", [nil, XSD::QName.new(NsVipuserservices, "Ip")]],
      ["userAgent", [nil, XSD::QName.new(NsVipuserservices, "UserAgent")]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["risky", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "Risky")], [0, 1]],
      ["riskScore", [nil, XSD::QName.new(NsVipuserservices, "RiskScore")], [0, 1]],
      ["riskThreshold", [nil, XSD::QName.new(NsVipuserservices, "RiskThreshold")], [0, 1]],
      ["riskReason", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "RiskReason")], [0, 1]],
      ["policyVersion", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "PolicyVersion")], [0, 1]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => ConfirmRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ConfirmRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => ConfirmRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ConfirmRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => DenyRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DenyRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["rememberDevice", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "RememberDevice")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => DenyRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DenyRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => ConfirmTransactionRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ConfirmTransactionRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")]],
      ["isMonetaryTransaction", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "IsMonetaryTransaction")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => ConfirmTransactionRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ConfirmTransactionRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => DenyTransactionRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DenyTransactionRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")]],
      ["isMonetaryTransaction", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "IsMonetaryTransaction")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => DenyTransactionRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DenyTransactionRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateNonMonetaryTransactionRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateNonMonetaryTransactionRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["ip", [nil, XSD::QName.new(NsVipuserservices, "Ip")], [0, 1]],
      ["userAgent", [nil, XSD::QName.new(NsVipuserservices, "UserAgent")], [0, 1]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]],
      ["nonMonetaryTransaction", ["NonMonetaryTransactionType", XSD::QName.new(NsVipuserservices, "NonMonetaryTransaction")]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateNonMonetaryTransactionRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateNonMonetaryTransactionRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["risky", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "Risky")], [0, 1]],
      ["riskScore", [nil, XSD::QName.new(NsVipuserservices, "RiskScore")], [0, 1]],
      ["riskThreshold", [nil, XSD::QName.new(NsVipuserservices, "RiskThreshold")], [0, 1]],
      ["riskReason", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "RiskReason")], [0, 1]],
      ["policyVersion", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "PolicyVersion")], [0, 1]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateMonetaryTransactionRiskRequestType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateMonetaryTransactionRiskRequestType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseRequestWithAccountIdType"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["ip", [nil, XSD::QName.new(NsVipuserservices, "Ip")], [0, 1]],
      ["userAgent", [nil, XSD::QName.new(NsVipuserservices, "UserAgent")], [0, 1]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]],
      ["monetaryTransaction", ["MonetaryTransactionType", XSD::QName.new(NsVipuserservices, "MonetaryTransaction")]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateMonetaryTransactionRiskResponseType,
    :schema_type => XSD::QName.new(NsVipuserservices, "EvaluateMonetaryTransactionRiskResponseType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "BaseResponseType"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["risky", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "Risky")], [0, 1]],
      ["riskScore", [nil, XSD::QName.new(NsVipuserservices, "RiskScore")], [0, 1]],
      ["riskThreshold", [nil, XSD::QName.new(NsVipuserservices, "RiskThreshold")], [0, 1]],
      ["riskReason", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "RiskReason")], [0, 1]],
      ["policyVersion", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "PolicyVersion")], [0, 1]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => KeyValuePairType,
    :schema_type => XSD::QName.new(NsVipuserservices, "KeyValuePairType"),
    :schema_element => [
      ["key", [nil, XSD::QName.new(NsVipuserservices, "Key")]],
      ["value", [nil, XSD::QName.new(NsVipuserservices, "Value")]]
    ]
  )

  LiteralRegistry.register(
    :class => CredentialDetailType,
    :schema_type => XSD::QName.new(NsVipuserservices, "CredentialDetailType"),
    :schema_element => [
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"],
      ["friendlyName", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BindingDetailType,
    :schema_type => XSD::QName.new(NsVipuserservices, "BindingDetailType"),
    :schema_element => [
      ["bindStatus", "BindStatusEnum"],
      ["friendlyName", nil, [0, 1]],
      ["lastBindTime", "SOAP::SOAPDateTime"],
      ["lastAuthnTime", "SOAP::SOAPDateTime", [0, 1]],
      ["lastAuthnId", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CredentialBindingDetailType,
    :schema_type => XSD::QName.new(NsVipuserservices, "CredentialBindingDetailType"),
    :schema_element => [
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"],
      ["credentialStatus", nil, [0, 1]],
      ["bindingDetail", "BindingDetailType"]
    ]
  )

  LiteralRegistry.register(
    :class => UserBindingDetailType,
    :schema_type => XSD::QName.new(NsVipuserservices, "UserBindingDetailType"),
    :schema_element => [
      ["userId", nil],
      ["userStatus", "UserStatusEnum"],
      ["bindingDetail", "BindingDetailType"]
    ]
  )

  LiteralRegistry.register(
    :class => OtpAuthDataType,
    :schema_type => XSD::QName.new(NsVipuserservices, "OtpAuthDataType"),
    :schema_basetype => XSD::QName.new(NsVipuserservices, "AbstractAuthDataType"),
    :schema_element => [
      ["otp", nil],
      ["otp2", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TemporaryPasswordAttributesType,
    :schema_type => XSD::QName.new(NsVipuserservices, "TemporaryPasswordAttributesType"),
    :schema_element => [
      ["expirationTime", "SOAP::SOAPDateTime", [0, 1]],
      ["oneTimeUseOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DestinationType,
    :schema_type => XSD::QName.new(NsVipuserservices, "DestinationType"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => SmsDeliveryInfoType,
    :schema_type => XSD::QName.new(NsVipuserservices, "SmsDeliveryInfoType"),
    :schema_element => [
      ["phoneNumber", nil],
      ["smsFrom", nil, [0, 1]],
      ["messageTemplate", nil, [0, 1]],
      ["gatewayAcctInfo", "GatewayAcctInfoType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GatewayAcctInfoType,
    :schema_type => XSD::QName.new(NsVipuserservices, "GatewayAcctInfoType"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "Id")]],
      ["password", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "Password")]]
    ]
  )

  LiteralRegistry.register(
    :class => VoiceDeliveryInfoType,
    :schema_type => XSD::QName.new(NsVipuserservices, "VoiceDeliveryInfoType"),
    :schema_element => [
      ["phoneNumber", nil],
      ["language", ["SOAP::SOAPLanguage", XSD::QName.new(NsVipuserservices, "Language")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceOtpDeliveryInfoType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ServiceOtpDeliveryInfoType"),
    :schema_element => [
      ["id", nil]
    ]
  )

  LiteralRegistry.register(
    :class => MonetaryTransactionType,
    :schema_type => XSD::QName.new(NsVipuserservices, "MonetaryTransactionType"),
    :schema_element => [
      ["sourceAccount", ["Account", XSD::QName.new(NsVipuserservices, "SourceAccount")]],
      ["destinationAccount", ["Account", XSD::QName.new(NsVipuserservices, "DestinationAccount")]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")], [0, 1]],
      ["transactionAmount", [nil, XSD::QName.new(NsVipuserservices, "TransactionAmount")]],
      ["accountBalance", [nil, XSD::QName.new(NsVipuserservices, "AccountBalance")], [0, 1]],
      ["transactionType", ["TransactionType", XSD::QName.new(NsVipuserservices, "TransactionType")]],
      ["channelType", ["MonetaryTransactionChannelType", XSD::QName.new(NsVipuserservices, "ChannelType")]]
    ]
  )

  LiteralRegistry.register(
    :class => NonMonetaryTransactionType,
    :schema_type => XSD::QName.new(NsVipuserservices, "NonMonetaryTransactionType"),
    :schema_element => [
      ["sourceAccount", ["Account", XSD::QName.new(NsVipuserservices, "SourceAccount")], [0, 1]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")], [0, 1]],
      ["changeType", ["ChangeType", XSD::QName.new(NsVipuserservices, "ChangeType")]],
      ["channelType", ["NonMonetaryTransactionChannelType", XSD::QName.new(NsVipuserservices, "ChannelType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Account,
    :schema_type => XSD::QName.new(NsVipuserservices, "Account"),
    :schema_element => [
      ["accountName", [nil, XSD::QName.new(NsVipuserservices, "AccountName")]],
      ["bankID", [nil, XSD::QName.new(NsVipuserservices, "BankID")]],
      ["accountType", ["AccountType", XSD::QName.new(NsVipuserservices, "AccountType")]],
      ["accountDescription", [nil, XSD::QName.new(NsVipuserservices, "AccountDescription")], [0, 1]],
      ["accountCreationDate", ["SOAP::SOAPDate", XSD::QName.new(NsVipuserservices, "AccountCreationDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CredentialTypeEnum,
    :schema_type => XSD::QName.new(NsVipuserservices, "CredentialTypeEnum")
  )

  LiteralRegistry.register(
    :class => UserStatusEnum,
    :schema_type => XSD::QName.new(NsVipuserservices, "UserStatusEnum")
  )

  LiteralRegistry.register(
    :class => BindStatusEnum,
    :schema_type => XSD::QName.new(NsVipuserservices, "BindStatusEnum")
  )

  LiteralRegistry.register(
    :class => TransactionType,
    :schema_type => XSD::QName.new(NsVipuserservices, "TransactionType")
  )

  LiteralRegistry.register(
    :class => AccountType,
    :schema_type => XSD::QName.new(NsVipuserservices, "AccountType")
  )

  LiteralRegistry.register(
    :class => MonetaryTransactionChannelType,
    :schema_type => XSD::QName.new(NsVipuserservices, "MonetaryTransactionChannelType")
  )

  LiteralRegistry.register(
    :class => NonMonetaryTransactionChannelType,
    :schema_type => XSD::QName.new(NsVipuserservices, "NonMonetaryTransactionChannelType")
  )

  LiteralRegistry.register(
    :class => ChangeType,
    :schema_type => XSD::QName.new(NsVipuserservices, "ChangeType")
  )

  LiteralRegistry.register(
    :class => GetServerTimeRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "GetServerTimeRequest"),
    :schema_element => [
      ["requestId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GetServerTimeResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "GetServerTimeResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["timestamp", "SOAP::SOAPDateTime", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateUserRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "CreateUserRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["pin", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateUserResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "CreateUserResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateUserRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "UpdateUserRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["newUserId", nil, [0, 1]],
      ["newUserStatus", "UserStatusEnum", [0, 1]],
      ["oldPin", nil, [0, 1]],
      ["newPin", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateUserResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "UpdateUserResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteUserRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "DeleteUserRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteUserResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "DeleteUserResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClearUserPinRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "ClearUserPinRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ClearUserPinResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "ClearUserPinResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddCredentialRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "AddCredentialRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["credentialDetail", "CredentialDetailType"],
      [ :choice,
        ["otpAuthData", "OtpAuthDataType"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => AddCredentialResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "AddCredentialResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateCredentialRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "UpdateCredentialRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"],
      ["friendlyName", nil]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateCredentialResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "UpdateCredentialResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveCredentialRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "RemoveCredentialRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"]
    ]
  )

  LiteralRegistry.register(
    :class => RemoveCredentialResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "RemoveCredentialResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfoRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "GetUserInfoRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfoResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "GetUserInfoResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["userId", nil, [0, 1]],
      ["userCreationTime", "SOAP::SOAPDateTime", [0, 1]],
      ["userStatus", "UserStatusEnum", [0, 1]],
      ["numBindings", "SOAP::SOAPInteger", [0, 1]],
      ["credentialBindingDetail", "CredentialBindingDetailType[]", [0, nil]],
      ["isPinSet", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCredentialInfoRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "GetCredentialInfoRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["credentialId", nil],
      ["credentialType", "CredentialTypeEnum"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCredentialInfoResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "GetCredentialInfoResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["credentialId", nil, [0, 1]],
      ["credentialType", "CredentialTypeEnum", [0, 1]],
      ["credentialStatus", nil, [0, 1]],
      ["numBindings", "SOAP::SOAPInteger", [0, 1]],
      ["userBindingDetail", "UserBindingDetailType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticateUserRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "AuthenticateUserRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["pin", nil, [0, 1]],
      [ :choice,
        ["otpAuthData", "OtpAuthDataType"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => AuthenticateUserResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "AuthenticateUserResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["credentialId", nil, [0, 1]],
      ["credentialType", "CredentialTypeEnum", [0, 1]],
      ["authnId", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetTemporaryPasswordRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["temporaryPassword", nil, [0, 1]],
      ["temporaryPasswordAttributes", "TemporaryPasswordAttributesType", [0, 1]],
      [ :choice,
        ["smsDeliveryInfo", "SmsDeliveryInfoType", [0, 1]],
        ["voiceDeliveryInfo", "VoiceDeliveryInfoType", [0, 1]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => SetTemporaryPasswordResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["temporaryPassword", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClearTemporaryPasswordRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "ClearTemporaryPasswordRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ClearTemporaryPasswordResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "ClearTemporaryPasswordResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SetTemporaryPasswordAttributesRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordAttributesRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      ["temporaryPasswordAttributes", "TemporaryPasswordAttributesType"]
    ]
  )

  LiteralRegistry.register(
    :class => SetTemporaryPasswordAttributesResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "SetTemporaryPasswordAttributesResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetTemporaryPasswordAttributesRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "GetTemporaryPasswordAttributesRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GetTemporaryPasswordAttributesResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "GetTemporaryPasswordAttributesResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["tempPwdAttributes", "TemporaryPasswordAttributesType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SendOtpRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "SendOtpRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", nil],
      [ :choice,
        ["smsDeliveryInfo", "SmsDeliveryInfoType", [0, 1]],
        ["voiceDeliveryInfo", "VoiceDeliveryInfoType", [0, 1]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => SendOtpResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "SendOtpResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RegisterRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "RegisterRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      [ :choice,
        ["smsDeliveryInfo", "SmsDeliveryInfoType"],
        ["voiceDeliveryInfo", "VoiceDeliveryInfoType"],
        ["serviceOtpDeliveryInfo", "ServiceOtpDeliveryInfoType"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => RegisterResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "RegisterResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["otp", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateRiskRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "EvaluateRiskRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["ip", [nil, XSD::QName.new(NsVipuserservices, "Ip")]],
      ["userAgent", [nil, XSD::QName.new(NsVipuserservices, "UserAgent")]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateRiskResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "EvaluateRiskResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["risky", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "Risky")], [0, 1]],
      ["riskScore", [nil, XSD::QName.new(NsVipuserservices, "RiskScore")], [0, 1]],
      ["riskThreshold", [nil, XSD::QName.new(NsVipuserservices, "RiskThreshold")], [0, 1]],
      ["riskReason", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "RiskReason")], [0, 1]],
      ["policyVersion", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "PolicyVersion")], [0, 1]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => ConfirmRiskRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "ConfirmRiskRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => ConfirmRiskResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "ConfirmRiskResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => DenyRiskRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "DenyRiskRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["eventId", [nil, XSD::QName.new(NsVipuserservices, "EventId")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["rememberDevice", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "RememberDevice")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => DenyRiskResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "DenyRiskResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => ConfirmTransactionRiskRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "ConfirmTransactionRiskRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")]],
      ["isMonetaryTransaction", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "IsMonetaryTransaction")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => ConfirmTransactionRiskResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "ConfirmTransactionRiskResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => DenyTransactionRiskRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "DenyTransactionRiskRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")]],
      ["isMonetaryTransaction", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "IsMonetaryTransaction")]],
      ["verifyMethod", [nil, XSD::QName.new(NsVipuserservices, "VerifyMethod")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => DenyTransactionRiskResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "DenyTransactionRiskResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateNonMonetaryTransactionRiskRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "EvaluateNonMonetaryTransactionRiskRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["ip", [nil, XSD::QName.new(NsVipuserservices, "Ip")], [0, 1]],
      ["userAgent", [nil, XSD::QName.new(NsVipuserservices, "UserAgent")], [0, 1]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]],
      ["nonMonetaryTransaction", ["NonMonetaryTransactionType", XSD::QName.new(NsVipuserservices, "NonMonetaryTransaction")]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateNonMonetaryTransactionRiskResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "EvaluateNonMonetaryTransactionRiskResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["risky", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "Risky")], [0, 1]],
      ["riskScore", [nil, XSD::QName.new(NsVipuserservices, "RiskScore")], [0, 1]],
      ["riskThreshold", [nil, XSD::QName.new(NsVipuserservices, "RiskThreshold")], [0, 1]],
      ["riskReason", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "RiskReason")], [0, 1]],
      ["policyVersion", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "PolicyVersion")], [0, 1]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateMonetaryTransactionRiskRequestType,
    :schema_name => XSD::QName.new(NsVipuserservices, "EvaluateMonetaryTransactionRiskRequest"),
    :schema_element => [
      ["requestId", nil],
      ["onBehalfOfAccountId", nil, [0, 1]],
      ["userId", [nil, XSD::QName.new(NsVipuserservices, "UserId")]],
      ["ip", [nil, XSD::QName.new(NsVipuserservices, "Ip")], [0, 1]],
      ["userAgent", [nil, XSD::QName.new(NsVipuserservices, "UserAgent")], [0, 1]],
      ["iAAuthData", [nil, XSD::QName.new(NsVipuserservices, "IAAuthData")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]],
      ["monetaryTransaction", ["MonetaryTransactionType", XSD::QName.new(NsVipuserservices, "MonetaryTransaction")]]
    ]
  )

  LiteralRegistry.register(
    :class => EvaluateMonetaryTransactionRiskResponseType,
    :schema_name => XSD::QName.new(NsVipuserservices, "EvaluateMonetaryTransactionRiskResponse"),
    :schema_element => [
      ["requestId", nil],
      ["status", "SOAP::SOAPHexBinary"],
      ["statusMessage", "SOAP::SOAPString"],
      ["detail", "SOAP::SOAPHexBinary", [0, 1]],
      ["detailMessage", "SOAP::SOAPString", [0, 1]],
      ["risky", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipuserservices, "Risky")], [0, 1]],
      ["riskScore", [nil, XSD::QName.new(NsVipuserservices, "RiskScore")], [0, 1]],
      ["riskThreshold", [nil, XSD::QName.new(NsVipuserservices, "RiskThreshold")], [0, 1]],
      ["riskReason", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "RiskReason")], [0, 1]],
      ["policyVersion", ["SOAP::SOAPString", XSD::QName.new(NsVipuserservices, "PolicyVersion")], [0, 1]],
      ["transactionId", [nil, XSD::QName.new(NsVipuserservices, "TransactionId")], [0, 1]],
      ["keyValuePairs", ["KeyValuePairType[]", XSD::QName.new(NsVipuserservices, "KeyValuePairs")], [0, 20]]
    ]
  )
end
