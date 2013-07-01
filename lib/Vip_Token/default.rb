require 'xsd/qname'

# {http://www.verisign.com/2006/08/vipservice}MessageAbstractType
# abstract
#   xmlattr_Version - SOAP::SOAPString
class MessageAbstractType
  AttrVersion = XSD::QName.new(nil, "Version")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_Version
    __xmlattr[AttrVersion]
  end

  def xmlattr_Version=(value)
    __xmlattr[AttrVersion] = value
  end

  def initialize
    @__xmlattr = {}
  end
end

# {http://www.verisign.com/2006/08/vipservice}RequestAbstractType
# abstract
#   xmlattr_Version - SOAP::SOAPString
#   xmlattr_Id - SOAP::SOAPString
class RequestAbstractType < MessageAbstractType
  AttrId = XSD::QName.new(nil, "Id")
  AttrVersion = XSD::QName.new(nil, "Version")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_Version
    __xmlattr[AttrVersion]
  end

  def xmlattr_Version=(value)
    __xmlattr[AttrVersion] = value
  end

  def xmlattr_Id
    __xmlattr[AttrId]
  end

  def xmlattr_Id=(value)
    __xmlattr[AttrId] = value
  end

  def initialize
    @__xmlattr = {}
  end
end

# {http://www.verisign.com/2006/08/vipservice}AccountRequestAbstractType
# abstract
#   authorizerAccountId - (any)
#   xmlattr_Version - SOAP::SOAPString
#   xmlattr_Id - SOAP::SOAPString
class AccountRequestAbstractType < RequestAbstractType
  AttrId = XSD::QName.new(nil, "Id")
  AttrVersion = XSD::QName.new(nil, "Version")

  attr_accessor :authorizerAccountId

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_Version
    __xmlattr[AttrVersion]
  end

  def xmlattr_Version=(value)
    __xmlattr[AttrVersion] = value
  end

  def xmlattr_Id
    __xmlattr[AttrId]
  end

  def xmlattr_Id=(value)
    __xmlattr[AttrId] = value
  end

  def initialize(authorizerAccountId = nil)
    @authorizerAccountId = authorizerAccountId
    @__xmlattr = {}
  end
end

# {http://www.verisign.com/2006/08/vipservice}MultipleTokensRequestType
# abstract
#   authorizerAccountId - (any)
#   tokenIds - TokenIdType
#   xmlattr_Version - SOAP::SOAPString
#   xmlattr_Id - SOAP::SOAPString
class MultipleTokensRequestType < AccountRequestAbstractType
  AttrId = XSD::QName.new(nil, "Id")
  AttrVersion = XSD::QName.new(nil, "Version")

  attr_accessor :authorizerAccountId
  attr_accessor :tokenIds

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_Version
    __xmlattr[AttrVersion]
  end

  def xmlattr_Version=(value)
    __xmlattr[AttrVersion] = value
  end

  def xmlattr_Id
    __xmlattr[AttrId]
  end

  def xmlattr_Id=(value)
    __xmlattr[AttrId] = value
  end

  def initialize(authorizerAccountId = nil, tokenIds = [])
    @authorizerAccountId = authorizerAccountId
    @tokenIds = tokenIds
    @__xmlattr = {}
  end
end

# {http://www.verisign.com/2006/08/vipservice}ValidateCRType
#   authorizerAccountId - (any)
#   tokenIds - TokenIdType
#   numericChallenge - (any)
#   hexChallenge - (any)
#   response - (any)
#   checkOnly - SOAP::SOAPBoolean
#   xmlattr_Version - SOAP::SOAPString
#   xmlattr_Id - SOAP::SOAPString
class ValidateCRType < MultipleTokensRequestType
  AttrId = XSD::QName.new(nil, "Id")
  AttrVersion = XSD::QName.new(nil, "Version")

  attr_accessor :authorizerAccountId
  attr_accessor :tokenIds
  attr_accessor :numericChallenge
  attr_accessor :hexChallenge
  attr_accessor :response
  attr_accessor :checkOnly

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_Version
    __xmlattr[AttrVersion]
  end

  def xmlattr_Version=(value)
    __xmlattr[AttrVersion] = value
  end

  def xmlattr_Id
    __xmlattr[AttrId]
  end

  def xmlattr_Id=(value)
    __xmlattr[AttrId] = value
  end

  def initialize(authorizerAccountId = nil, tokenIds = [], numericChallenge = nil, hexChallenge = nil, response = nil, checkOnly = nil)
    @authorizerAccountId = authorizerAccountId
    @tokenIds = tokenIds
    @numericChallenge = numericChallenge
    @hexChallenge = hexChallenge
    @response = response
    @checkOnly = checkOnly
    @__xmlattr = {}
  end
end

# {http://www.verisign.com/2006/08/vipservice}ResponseAbstractType
# abstract
#   xmlattr_Version - SOAP::SOAPString
#   xmlattr_RequestId - SOAP::SOAPString
class ResponseAbstractType < MessageAbstractType
  AttrRequestId = XSD::QName.new(nil, "RequestId")
  AttrVersion = XSD::QName.new(nil, "Version")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_Version
    __xmlattr[AttrVersion]
  end

  def xmlattr_Version=(value)
    __xmlattr[AttrVersion] = value
  end

  def xmlattr_RequestId
    __xmlattr[AttrRequestId]
  end

  def xmlattr_RequestId=(value)
    __xmlattr[AttrRequestId] = value
  end

  def initialize
    @__xmlattr = {}
  end
end
# {http://www.verisign.com/2006/08/vipservice}ResponseWithStatusType
#   status - StatusType
#   xmlattr_Version - SOAP::SOAPString
#   xmlattr_RequestId - SOAP::SOAPString
class ResponseWithStatusType < ResponseAbstractType
  AttrRequestId = XSD::QName.new(nil, "RequestId")
  AttrVersion = XSD::QName.new(nil, "Version")

  attr_accessor :status

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_Version
    __xmlattr[AttrVersion]
  end

  def xmlattr_Version=(value)
    __xmlattr[AttrVersion] = value
  end

  def xmlattr_RequestId
    __xmlattr[AttrRequestId]
  end

  def xmlattr_RequestId=(value)
    __xmlattr[AttrRequestId] = value
  end

  def initialize(status = nil)
    @status = status
    @__xmlattr = {}
  end
end

# {http://www.verisign.com/2006/08/vipservice}ValidateCRResponseType
#   status - StatusType
#   successfulTokenId - TokenIdType
#   networkAlert - SOAP::SOAPBoolean
#   xmlattr_Version - SOAP::SOAPString
#   xmlattr_RequestId - SOAP::SOAPString
class ValidateCRResponseType < ResponseWithStatusType
  AttrRequestId = XSD::QName.new(nil, "RequestId")
  AttrVersion = XSD::QName.new(nil, "Version")

  attr_accessor :status
  attr_accessor :successfulTokenId
  attr_accessor :networkAlert

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_Version
    __xmlattr[AttrVersion]
  end

  def xmlattr_Version=(value)
    __xmlattr[AttrVersion] = value
  end

  def xmlattr_RequestId
    __xmlattr[AttrRequestId]
  end

  def xmlattr_RequestId=(value)
    __xmlattr[AttrRequestId] = value
  end

  def initialize(status = nil, successfulTokenId = nil, networkAlert = nil)
    @status = status
    @successfulTokenId = successfulTokenId
    @networkAlert = networkAlert
    @__xmlattr = {}
  end
end

# {http://www.verisign.com/2006/08/vipservice}StatusType
#   reasonCode - SOAP::SOAPHexBinary
#   statusMessage - SOAP::SOAPString
#   errorDetail - SOAP::SOAPString
class StatusType
  attr_accessor :reasonCode
  attr_accessor :statusMessage
  attr_accessor :errorDetail

  def initialize(reasonCode = nil, statusMessage = nil, errorDetail = nil)
    @reasonCode = reasonCode
    @statusMessage = statusMessage
    @errorDetail = errorDetail
  end
end

# {http://www.verisign.com/2006/08/vipservice}TokenIdType
#   xmlattr_type - SOAP::SOAPString
class TokenIdType < ::String
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
