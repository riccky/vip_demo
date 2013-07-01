require "#{Rails.root}/lib/Vip_Token/default.rb"
require "#{Rails.root}/lib/Vip_Token/defaultMappingRegistry.rb"
require 'soap/rpc/driver'

class VipSoapInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://t1.se-demo2.com"

  Methods = [
    [ "",
      "getServerTime",
      [ ["in", "GetServerTime", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "GetServerTime"]],
        ["out", "GetServerTimeResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "GetServerTimeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "activateToken",
      [ ["in", "ActivateToken", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "ActivateToken"]],
        ["out", "ActivateTokenResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "ActivateTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "deactivateToken",
      [ ["in", "DeactivateToken", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "DeactivateToken"]],
        ["out", "DeactivateTokenResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "DeactivateTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "enableToken",
      [ ["in", "EnableToken", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "EnableToken"]],
        ["out", "EnableTokenResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "EnableTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "disableToken",
      [ ["in", "DisableToken", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "DisableToken"]],
        ["out", "DisableTokenResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "DisableTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "unlockToken",
      [ ["in", "UnlockToken", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "UnlockToken"]],
        ["out", "UnlockTokenResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "UnlockTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "validate",
      [ ["in", "Validate", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "Validate"]],
        ["out", "ValidateResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "ValidateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "synchronize",
      [ ["in", "Synchronize", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "Synchronize"]],
        ["out", "SynchronizeResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "SynchronizeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "validateMultiple",
      [ ["in", "ValidateMultiple", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "ValidateMultiple"]],
        ["out", "ValidateMultipleResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "ValidateMultipleResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "checkOTP",
      [ ["in", "CheckOTP", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "CheckOTP"]],
        ["out", "CheckOTPResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "CheckOTPResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "setTemporaryPassword",
      [ ["in", "SetTemporaryPassword", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "SetTemporaryPassword"]],
        ["out", "SetTemporaryPasswordResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "SetTemporaryPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "setTemporaryPwdExpiration",
      [ ["in", "SetTemporaryPwdExpiration", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "SetTemporaryPwdExpiration"]],
        ["out", "SetTemporaryPwdExpirationResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "SetTemporaryPwdExpirationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getTemporaryPwdExpiration",
      [ ["in", "GetTemporaryPwdExpiration", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "GetTemporaryPwdExpiration"]],
        ["out", "GetTemporaryPwdExpirationResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "GetTemporaryPwdExpirationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getTokenInformation",
      [ ["in", "GetTokenInformation", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "GetTokenInformation"]],
        ["out", "GetTokenInformationResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "GetTokenInformationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "getAdminCode",
      [ ["in", "GetAdminCode", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "GetAdminCode"]],
        ["out", "GetAdminCodeResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "GetAdminCodeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "sendOTP",
      [ ["in", "SendOTP", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "SendOTP"]],
        ["out", "SendOTPResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "SendOTPResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "register",
      [ ["in", "Register", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "Register"]],
        ["out", "RegisterResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "RegisterResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "sendTemporaryPassword",
      [ ["in", "SendTemporaryPassword", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "SendTemporaryPassword"]],
        ["out", "SendTemporaryPasswordResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "SendTemporaryPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "generateTemporaryPassword",
      [ ["in", "GenerateTemporaryPassword", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "GenerateTemporaryPassword"]],
        ["out", "GenerateTemporaryPasswordResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "GenerateTemporaryPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "submitTxnVerification",
      [ ["in", "SubmitTxnVerification", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "SubmitTxnVerification"]],
        ["out", "SubmitTxnVerificationResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "SubmitTxnVerificationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "pollTxnVerification",
      [ ["in", "PollTxnVerification", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "PollTxnVerification"]],
        ["out", "PollTxnVerificationResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "PollTxnVerificationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "deliverTxnOTP",
      [ ["in", "DeliverTxnOTP", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "DeliverTxnOTP"]],
        ["out", "DeliverTxnOTPResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "DeliverTxnOTPResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "verifyTxnOTP",
      [ ["in", "VerifyTxnOTP", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "VerifyTxnOTP"]],
        ["out", "VerifyTxnOTPResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "VerifyTxnOTPResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "validateCR",
      [ ["in", "ValidateCR", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "ValidateCR"]],
        ["out", "ValidateCRResponse", ["::SOAP::SOAPElement", "http://www.verisign.com/2006/08/vipservice", "ValidateCRResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

