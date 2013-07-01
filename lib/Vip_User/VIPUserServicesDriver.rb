require "#{Rails.root}/lib/Vip_User/VIPUserServices.rb"
require "#{Rails.root}/lib/Vip_User/VIPUserServicesMappingRegistry.rb"
require 'soap/rpc/driver'

class AuthenticationServicePort < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://vipuserservices-auth.verisign.com/vipuserservices/AuthenticationService_1_1"

  Methods = [
    [ "",
      "authenticateUser",
      [ ["in", "AuthenticateUserRequest", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "AuthenticateUserRequest"]],
        ["out", "AuthenticateUserResponse", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "AuthenticateUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "createUser",
      [ ["in", "CreateUserRequest", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "CreateUserRequest"]],
        ["out", "CreateUserResponse", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "CreateUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "addCredential",
      [ ["in", "AddCredentialRequest", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "AddCredentialRequest"]],
        ["out", "AddCredentialResponse", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "AddCredentialResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "evaluateRisk",
      [ ["in", "EvaluateRiskRequest", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "EvaluateRiskRequest"]],
        ["out", "EvaluateRiskResponse", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "EvaluateRiskResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "confirmRisk",
      [ ["in", "ConfirmRiskRequest", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "ConfirmRiskRequest"]],
        ["out", "ConfirmRiskResponse", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "ConfirmRiskResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "denyRisk",
      [ ["in", "DenyRiskRequest", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "DenyRiskRequest"]],
        ["out", "DenyRiskResponse", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "DenyRiskResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "evaluateNonMonetaryTransactionRisk",
      [ ["in", "EvaluateNonMonetaryTransactionRiskRequest", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "EvaluateNonMonetaryTransactionRiskRequest"]],
        ["out", "EvaluateNonMonetaryTransactionRiskResponse", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "EvaluateNonMonetaryTransactionRiskResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "evaluateMonetaryTransactionRisk",
      [ ["in", "EvaluateMonetaryTransactionRiskRequest", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "EvaluateMonetaryTransactionRiskRequest"]],
        ["out", "EvaluateMonetaryTransactionRiskResponse", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "EvaluateMonetaryTransactionRiskResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "confirmTransactionRisk",
      [ ["in", "ConfirmTransactionRiskRequest", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "ConfirmTransactionRiskRequest"]],
        ["out", "ConfirmTransactionRiskResponse", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "ConfirmTransactionRiskResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "",
      "denyTransactionRisk",
      [ ["in", "DenyTransactionRiskRequest", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "DenyTransactionRiskRequest"]],
        ["out", "DenyTransactionRiskResponse", ["::SOAP::SOAPElement", "http://schemas.verisign.com/vip/2011/04/vipuserservices", "DenyTransactionRiskResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = VIPUserServicesMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = VIPUserServicesMappingRegistry::LiteralRegistry
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
