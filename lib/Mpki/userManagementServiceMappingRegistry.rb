require "#{Rails.root}/lib/Mpki/userManagementService.rb"
require 'soap/mapping'

module UserManagementServiceMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsUsermanagement = "http://schemas.verisign.com/pkiservices/2011/08/usermanagement"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  EncodedRegistry.register(
    :class => GetUserInformationRequestMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "GetUserInformationRequestMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["seatId", "SOAP::SOAPString"],
      ["getUserCertificate", "SOAP::SOAPBoolean", [0, 1]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserInformationType,
    :schema_type => XSD::QName.new(NsUsermanagement, "UserInformationType"),
    :schema_element => [
      ["seatId", "SOAP::SOAPString"],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["emailAddress", "SOAP::SOAPString", [0, 1]],
      ["deskPhoneNumber", "SOAP::SOAPString", [0, 1]],
      ["mobilePhoneNumber", "SOAP::SOAPString", [0, 1]],
      ["userAttribute", "NameValueType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => NameValueType,
    :schema_type => XSD::QName.new(NsUsermanagement, "NameValueType"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => PasscodeCreationStatusType,
    :schema_type => XSD::QName.new(NsUsermanagement, "PasscodeCreationStatusType"),
    :schema_element => [
      ["passcodeInformation", "PasscodeInformationType"],
      ["statusCode", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => PasscodeInformationType,
    :schema_type => XSD::QName.new(NsUsermanagement, "PasscodeInformationType"),
    :schema_element => [
      ["passcode", "SOAP::SOAPString", [0, 1]],
      ["numberOfBadAttempts", "SOAP::SOAPInt", [0, 1]],
      ["passcodeStatus", "SOAP::SOAPString", [0, 1]],
      ["expiryDateTime", "SOAP::SOAPDateTime", [0, 1]],
      ["creationDateTime", "SOAP::SOAPDateTime", [0, 1]],
      ["seatId", "SOAP::SOAPString"],
      ["certificateProfileOid", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => GetUserInformationResponseMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "GetUserInformationResponseMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["userInformation", "UserInformationType"],
      ["userValidCertificates", "UserValidCertificatesType", [0, 1]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserValidCertificatesType,
    :schema_type => XSD::QName.new(NsUsermanagement, "UserValidCertificatesType"),
    :schema_element => [
      ["userCertificate", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => GetPasscodeInformationResponseMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "GetPasscodeInformationResponseMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["passcodeInformation", "PasscodeInformationType"],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => CreateOrUpdateUserRequestMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "CreateOrUpdateUserRequestMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["userInformation", "UserInformationType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => CreateOrUpdatePasscodeResponseMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "CreateOrUpdatePasscodeResponseMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["passcodeCreationStatus", "PasscodeCreationStatusType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => CreateOrUpdateUserResponseMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "CreateOrUpdateUserResponseMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["userCreationStatus", "UserCreationStatusType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserCreationStatusType,
    :schema_type => XSD::QName.new(NsUsermanagement, "UserCreationStatusType"),
    :schema_element => [
      ["seatId", "SOAP::SOAPString"],
      ["statusCode", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => CreateOrUpdatePasscodeRequestMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "CreateOrUpdatePasscodeRequestMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["passcodeInformation", "PasscodeInformationType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => GetPasscodeInformationRequestMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "GetPasscodeInformationRequestMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["seatId", "SOAP::SOAPString"],
      ["certificateProfileOid", "SOAP::SOAPString"],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInformationRequestMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "GetUserInformationRequestMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["seatId", "SOAP::SOAPString"],
      ["getUserCertificate", "SOAP::SOAPBoolean", [0, 1]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserInformationType,
    :schema_type => XSD::QName.new(NsUsermanagement, "UserInformationType"),
    :schema_element => [
      ["seatId", "SOAP::SOAPString"],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["emailAddress", "SOAP::SOAPString", [0, 1]],
      ["deskPhoneNumber", "SOAP::SOAPString", [0, 1]],
      ["mobilePhoneNumber", "SOAP::SOAPString", [0, 1]],
      ["userAttribute", "NameValueType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => NameValueType,
    :schema_type => XSD::QName.new(NsUsermanagement, "NameValueType"),
    :schema_element => [
      ["name", "SOAP::SOAPString"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => PasscodeCreationStatusType,
    :schema_type => XSD::QName.new(NsUsermanagement, "PasscodeCreationStatusType"),
    :schema_element => [
      ["passcodeInformation", "PasscodeInformationType"],
      ["statusCode", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => PasscodeInformationType,
    :schema_type => XSD::QName.new(NsUsermanagement, "PasscodeInformationType"),
    :schema_element => [
      ["passcode", "SOAP::SOAPString", [0, 1]],
      ["numberOfBadAttempts", "SOAP::SOAPInt", [0, 1]],
      ["passcodeStatus", "SOAP::SOAPString", [0, 1]],
      ["expiryDateTime", "SOAP::SOAPDateTime", [0, 1]],
      ["creationDateTime", "SOAP::SOAPDateTime", [0, 1]],
      ["seatId", "SOAP::SOAPString"],
      ["certificateProfileOid", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInformationResponseMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "GetUserInformationResponseMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["userInformation", "UserInformationType"],
      ["userValidCertificates", "UserValidCertificatesType", [0, 1]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserValidCertificatesType,
    :schema_type => XSD::QName.new(NsUsermanagement, "UserValidCertificatesType"),
    :schema_element => [
      ["userCertificate", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetPasscodeInformationResponseMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "GetPasscodeInformationResponseMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["passcodeInformation", "PasscodeInformationType"],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdateUserRequestMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "CreateOrUpdateUserRequestMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["userInformation", "UserInformationType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdatePasscodeResponseMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "CreateOrUpdatePasscodeResponseMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["passcodeCreationStatus", "PasscodeCreationStatusType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdateUserResponseMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "CreateOrUpdateUserResponseMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["userCreationStatus", "UserCreationStatusType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserCreationStatusType,
    :schema_type => XSD::QName.new(NsUsermanagement, "UserCreationStatusType"),
    :schema_element => [
      ["seatId", "SOAP::SOAPString"],
      ["statusCode", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdatePasscodeRequestMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "CreateOrUpdatePasscodeRequestMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["passcodeInformation", "PasscodeInformationType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetPasscodeInformationRequestMessageType,
    :schema_type => XSD::QName.new(NsUsermanagement, "GetPasscodeInformationRequestMessageType"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["seatId", "SOAP::SOAPString"],
      ["certificateProfileOid", "SOAP::SOAPString"],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdatePasscodeRequestMessageType,
    :schema_name => XSD::QName.new(NsUsermanagement, "createOrUpdatePasscodeRequest"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["passcodeInformation", "PasscodeInformationType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdatePasscodeResponseMessageType,
    :schema_name => XSD::QName.new(NsUsermanagement, "createOrUpdatePasscodeResponse"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["passcodeCreationStatus", "PasscodeCreationStatusType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdateUserRequestMessageType,
    :schema_name => XSD::QName.new(NsUsermanagement, "createOrUpdateUserRequest"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["userInformation", "UserInformationType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateOrUpdateUserResponseMessageType,
    :schema_name => XSD::QName.new(NsUsermanagement, "createOrUpdateUserResponse"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["userCreationStatus", "UserCreationStatusType[]", [1, nil]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetPasscodeInformationRequestMessageType,
    :schema_name => XSD::QName.new(NsUsermanagement, "getPasscodeInformationRequest"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["seatId", "SOAP::SOAPString"],
      ["certificateProfileOid", "SOAP::SOAPString"],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetPasscodeInformationResponseMessageType,
    :schema_name => XSD::QName.new(NsUsermanagement, "getPasscodeInformationResponse"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["passcodeInformation", "PasscodeInformationType"],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInformationRequestMessageType,
    :schema_name => XSD::QName.new(NsUsermanagement, "getUserInformationRequest"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["seatId", "SOAP::SOAPString"],
      ["getUserCertificate", "SOAP::SOAPBoolean", [0, 1]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInformationResponseMessageType,
    :schema_name => XSD::QName.new(NsUsermanagement, "getUserInformationResponse"),
    :schema_element => [
      ["clientTransactionID", "SOAP::SOAPString", [0, 1]],
      ["serverTransactionID", "SOAP::SOAPString"],
      ["userInformation", "UserInformationType"],
      ["userValidCertificates", "UserValidCertificatesType", [0, 1]],
      ["version", "SOAP::SOAPString"],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )
end
