require 'xsd/qname'

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}GetUserInformationRequestMessageType
#   clientTransactionID - SOAP::SOAPString
#   seatId - SOAP::SOAPString
#   getUserCertificate - SOAP::SOAPBoolean
#   version - SOAP::SOAPString
class GetUserInformationRequestMessageType
  attr_accessor :clientTransactionID
  attr_accessor :seatId
  attr_accessor :getUserCertificate
  attr_accessor :version
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(clientTransactionID = nil, seatId = nil, getUserCertificate = nil, version = nil)
    @clientTransactionID = clientTransactionID
    @seatId = seatId
    @getUserCertificate = getUserCertificate
    @version = version
    @__xmlele_any = nil
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}UserInformationType
#   seatId - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   emailAddress - SOAP::SOAPString
#   deskPhoneNumber - SOAP::SOAPString
#   mobilePhoneNumber - SOAP::SOAPString
#   userAttribute - NameValueType
class UserInformationType
  attr_accessor :seatId
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :emailAddress
  attr_accessor :deskPhoneNumber
  attr_accessor :mobilePhoneNumber
  attr_accessor :userAttribute

  def initialize(seatId = nil, firstName = nil, lastName = nil, emailAddress = nil, deskPhoneNumber = nil, mobilePhoneNumber = nil, userAttribute = [])
    @seatId = seatId
    @firstName = firstName
    @lastName = lastName
    @emailAddress = emailAddress
    @deskPhoneNumber = deskPhoneNumber
    @mobilePhoneNumber = mobilePhoneNumber
    @userAttribute = userAttribute
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}NameValueType
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class NameValueType
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}PasscodeCreationStatusType
#   passcodeInformation - PasscodeInformationType
#   statusCode - SOAP::SOAPString
class PasscodeCreationStatusType
  attr_accessor :passcodeInformation
  attr_accessor :statusCode

  def initialize(passcodeInformation = nil, statusCode = nil)
    @passcodeInformation = passcodeInformation
    @statusCode = statusCode
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}PasscodeInformationType
#   passcode - SOAP::SOAPString
#   numberOfBadAttempts - SOAP::SOAPInt
#   passcodeStatus - SOAP::SOAPString
#   expiryDateTime - SOAP::SOAPDateTime
#   creationDateTime - SOAP::SOAPDateTime
#   seatId - SOAP::SOAPString
#   certificateProfileOid - SOAP::SOAPString
class PasscodeInformationType
  attr_accessor :passcode
  attr_accessor :numberOfBadAttempts
  attr_accessor :passcodeStatus
  attr_accessor :expiryDateTime
  attr_accessor :creationDateTime
  attr_accessor :seatId
  attr_accessor :certificateProfileOid
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(passcode = nil, numberOfBadAttempts = nil, passcodeStatus = nil, expiryDateTime = nil, creationDateTime = nil, seatId = nil, certificateProfileOid = nil)
    @passcode = passcode
    @numberOfBadAttempts = numberOfBadAttempts
    @passcodeStatus = passcodeStatus
    @expiryDateTime = expiryDateTime
    @creationDateTime = creationDateTime
    @seatId = seatId
    @certificateProfileOid = certificateProfileOid
    @__xmlele_any = nil
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}GetUserInformationResponseMessageType
#   clientTransactionID - SOAP::SOAPString
#   serverTransactionID - SOAP::SOAPString
#   userInformation - UserInformationType
#   userValidCertificates - UserValidCertificatesType
#   version - SOAP::SOAPString
class GetUserInformationResponseMessageType
  attr_accessor :clientTransactionID
  attr_accessor :serverTransactionID
  attr_accessor :userInformation
  attr_accessor :userValidCertificates
  attr_accessor :version
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(clientTransactionID = nil, serverTransactionID = nil, userInformation = nil, userValidCertificates = nil, version = nil)
    @clientTransactionID = clientTransactionID
    @serverTransactionID = serverTransactionID
    @userInformation = userInformation
    @userValidCertificates = userValidCertificates
    @version = version
    @__xmlele_any = nil
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}UserValidCertificatesType
class UserValidCertificatesType < ::Array
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}GetPasscodeInformationResponseMessageType
#   clientTransactionID - SOAP::SOAPString
#   serverTransactionID - SOAP::SOAPString
#   passcodeInformation - PasscodeInformationType
#   version - SOAP::SOAPString
class GetPasscodeInformationResponseMessageType
  attr_accessor :clientTransactionID
  attr_accessor :serverTransactionID
  attr_accessor :passcodeInformation
  attr_accessor :version
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(clientTransactionID = nil, serverTransactionID = nil, passcodeInformation = nil, version = nil)
    @clientTransactionID = clientTransactionID
    @serverTransactionID = serverTransactionID
    @passcodeInformation = passcodeInformation
    @version = version
    @__xmlele_any = nil
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}CreateOrUpdateUserRequestMessageType
#   clientTransactionID - SOAP::SOAPString
#   userInformation - UserInformationType
#   version - SOAP::SOAPString
class CreateOrUpdateUserRequestMessageType
  attr_accessor :clientTransactionID
  attr_accessor :userInformation
  attr_accessor :version
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(clientTransactionID = nil, userInformation = [], version = nil)
    @clientTransactionID = clientTransactionID
    @userInformation = userInformation
    @version = version
    @__xmlele_any = nil
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}CreateOrUpdatePasscodeResponseMessageType
#   clientTransactionID - SOAP::SOAPString
#   serverTransactionID - SOAP::SOAPString
#   passcodeCreationStatus - PasscodeCreationStatusType
#   version - SOAP::SOAPString
class CreateOrUpdatePasscodeResponseMessageType
  attr_accessor :clientTransactionID
  attr_accessor :serverTransactionID
  attr_accessor :passcodeCreationStatus
  attr_accessor :version
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(clientTransactionID = nil, serverTransactionID = nil, passcodeCreationStatus = [], version = nil)
    @clientTransactionID = clientTransactionID
    @serverTransactionID = serverTransactionID
    @passcodeCreationStatus = passcodeCreationStatus
    @version = version
    @__xmlele_any = nil
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}CreateOrUpdateUserResponseMessageType
#   clientTransactionID - SOAP::SOAPString
#   serverTransactionID - SOAP::SOAPString
#   userCreationStatus - UserCreationStatusType
#   version - SOAP::SOAPString
class CreateOrUpdateUserResponseMessageType
  attr_accessor :clientTransactionID
  attr_accessor :serverTransactionID
  attr_accessor :userCreationStatus
  attr_accessor :version
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(clientTransactionID = nil, serverTransactionID = nil, userCreationStatus = [], version = nil)
    @clientTransactionID = clientTransactionID
    @serverTransactionID = serverTransactionID
    @userCreationStatus = userCreationStatus
    @version = version
    @__xmlele_any = nil
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}UserCreationStatusType
#   seatId - SOAP::SOAPString
#   statusCode - SOAP::SOAPString
class UserCreationStatusType
  attr_accessor :seatId
  attr_accessor :statusCode

  def initialize(seatId = nil, statusCode = nil)
    @seatId = seatId
    @statusCode = statusCode
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}CreateOrUpdatePasscodeRequestMessageType
#   clientTransactionID - SOAP::SOAPString
#   passcodeInformation - PasscodeInformationType
#   version - SOAP::SOAPString
class CreateOrUpdatePasscodeRequestMessageType
  attr_accessor :clientTransactionID
  attr_accessor :passcodeInformation
  attr_accessor :version
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(clientTransactionID = nil, passcodeInformation = [], version = nil)
    @clientTransactionID = clientTransactionID
    @passcodeInformation = passcodeInformation
    @version = version
    @__xmlele_any = nil
  end
end

# {http://schemas.verisign.com/pkiservices/2011/08/usermanagement}GetPasscodeInformationRequestMessageType
#   clientTransactionID - SOAP::SOAPString
#   seatId - SOAP::SOAPString
#   certificateProfileOid - SOAP::SOAPString
#   version - SOAP::SOAPString
class GetPasscodeInformationRequestMessageType
  attr_accessor :clientTransactionID
  attr_accessor :seatId
  attr_accessor :certificateProfileOid
  attr_accessor :version
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(clientTransactionID = nil, seatId = nil, certificateProfileOid = nil, version = nil)
    @clientTransactionID = clientTransactionID
    @seatId = seatId
    @certificateProfileOid = certificateProfileOid
    @version = version
    @__xmlele_any = nil
  end
end
