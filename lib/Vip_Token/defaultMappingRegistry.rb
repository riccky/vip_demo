require "#{Rails.root}/lib/Vip_Token/default.rb"
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsVipservice = "http://www.verisign.com/2006/08/vipservice"

  EncodedRegistry.register(
    :class => ValidateCRType,
    :schema_type => XSD::QName.new(NsVipservice, "ValidateCRType"),
    :schema_basetype => XSD::QName.new(NsVipservice, "MultipleTokensRequestType"),
    :schema_element => [
      ["authorizerAccountId", [nil, XSD::QName.new(NsVipservice, "AuthorizerAccountId")], [0, 1]],
      ["tokenIds", ["TokenIdType[]", XSD::QName.new(NsVipservice, "TokenIds")], [1, 5]],
      ["numericChallenge", [nil, XSD::QName.new(NsVipservice, "NumericChallenge")], [0, 1]],
      ["hexChallenge", [nil, XSD::QName.new(NsVipservice, "HexChallenge")], [0, 1]],
      ["response", [nil, XSD::QName.new(NsVipservice, "Response")]],
      ["checkOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipservice, "CheckOnly")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Version") => "SOAP::SOAPString",
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => ValidateCRResponseType,
    :schema_type => XSD::QName.new(NsVipservice, "ValidateCRResponseType"),
    :schema_basetype => XSD::QName.new(NsVipservice, "ResponseWithStatusType"),
    :schema_element => [
      ["status", ["StatusType", XSD::QName.new(NsVipservice, "Status")]],
      ["successfulTokenId", ["TokenIdType", XSD::QName.new(NsVipservice, "SuccessfulTokenId")], [0, 1]],
      ["networkAlert", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipservice, "NetworkAlert")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Version") => "SOAP::SOAPString",
      XSD::QName.new(nil, "RequestId") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => StatusType,
    :schema_type => XSD::QName.new(NsVipservice, "StatusType"),
    :schema_element => [
      ["reasonCode", ["SOAP::SOAPHexBinary", XSD::QName.new(NsVipservice, "ReasonCode")]],
      ["statusMessage", ["SOAP::SOAPString", XSD::QName.new(NsVipservice, "StatusMessage")], [0, 1]],
      ["errorDetail", ["SOAP::SOAPString", XSD::QName.new(NsVipservice, "ErrorDetail")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TokenIdType,
    :schema_type => XSD::QName.new(NsVipservice, "TokenIdType"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )
 
  LiteralRegistry.register(
    :class => ValidateCRType,
    :schema_type => XSD::QName.new(NsVipservice, "ValidateCRType"),
    :schema_basetype => XSD::QName.new(NsVipservice, "MultipleTokensRequestType"),
    :schema_element => [
      ["authorizerAccountId", [nil, XSD::QName.new(NsVipservice, "AuthorizerAccountId")], [0, 1]],
      ["tokenIds", ["TokenIdType[]", XSD::QName.new(NsVipservice, "TokenIds")], [1, 5]],
      ["numericChallenge", [nil, XSD::QName.new(NsVipservice, "NumericChallenge")], [0, 1]],
      ["hexChallenge", [nil, XSD::QName.new(NsVipservice, "HexChallenge")], [0, 1]],
      ["response", [nil, XSD::QName.new(NsVipservice, "Response")]],
      ["checkOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipservice, "CheckOnly")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Version") => "SOAP::SOAPString",
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => ValidateCRResponseType,
    :schema_type => XSD::QName.new(NsVipservice, "ValidateCRResponseType"),
    :schema_basetype => XSD::QName.new(NsVipservice, "ResponseWithStatusType"),
    :schema_element => [
      ["status", ["StatusType", XSD::QName.new(NsVipservice, "Status")]],
      ["successfulTokenId", ["TokenIdType", XSD::QName.new(NsVipservice, "SuccessfulTokenId")], [0, 1]],
      ["networkAlert", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipservice, "NetworkAlert")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Version") => "SOAP::SOAPString",
      XSD::QName.new(nil, "RequestId") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => StatusType,
    :schema_type => XSD::QName.new(NsVipservice, "StatusType"),
    :schema_element => [
      ["reasonCode", ["SOAP::SOAPHexBinary", XSD::QName.new(NsVipservice, "ReasonCode")]],
      ["statusMessage", ["SOAP::SOAPString", XSD::QName.new(NsVipservice, "StatusMessage")], [0, 1]],
      ["errorDetail", ["SOAP::SOAPString", XSD::QName.new(NsVipservice, "ErrorDetail")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TokenIdType,
    :schema_type => XSD::QName.new(NsVipservice, "TokenIdType"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => ValidateCRType,
    :schema_name => XSD::QName.new(NsVipservice, "ValidateCR"),
    :schema_element => [
      ["authorizerAccountId", [nil, XSD::QName.new(NsVipservice, "AuthorizerAccountId")], [0, 1]],
      ["tokenIds", ["TokenIdType[]", XSD::QName.new(NsVipservice, "TokenIds")], [1, 5]],
      ["numericChallenge", [nil, XSD::QName.new(NsVipservice, "NumericChallenge")], [0, 1]],
      ["hexChallenge", [nil, XSD::QName.new(NsVipservice, "HexChallenge")], [0, 1]],
      ["response", [nil, XSD::QName.new(NsVipservice, "Response")]],
      ["checkOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipservice, "CheckOnly")]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Version") => "SOAP::SOAPString",
      XSD::QName.new(nil, "Id") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => ValidateCRResponseType,
    :schema_name => XSD::QName.new(NsVipservice, "ValidateCRResponse"),
    :schema_element => [
      ["status", ["StatusType", XSD::QName.new(NsVipservice, "Status")]],
      ["successfulTokenId", ["TokenIdType", XSD::QName.new(NsVipservice, "SuccessfulTokenId")], [0, 1]],
      ["networkAlert", ["SOAP::SOAPBoolean", XSD::QName.new(NsVipservice, "NetworkAlert")], [0, 1]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "Version") => "SOAP::SOAPString",
      XSD::QName.new(nil, "RequestId") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => TokenIdType,
    :schema_name => XSD::QName.new(NsVipservice, "TokenId"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

end
