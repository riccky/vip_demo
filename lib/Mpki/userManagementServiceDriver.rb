require "#{Rails.root}/lib/Mpki/userManagementService.rb"
require "#{Rails.root}/lib/Mpki/userManagementServiceMappingRegistry.rb"
require 'soap/rpc/driver'

class UserManagementOperations < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://pki-ws.symauth.com:443/pki-ws/userManagementService"

  Methods = [
    [ "http://schemas.verisign.com/pkiservices/2011/08/usermanagement",
      "createOrUpdateUser",
      [ [:in, "request", ["::SOAP::SOAPElement", "http://schemas.verisign.com/pkiservices/2011/08/usermanagement", "createOrUpdateUserRequest"]],
        [:out, "response", ["::SOAP::SOAPElement", "http://schemas.verisign.com/pkiservices/2011/08/usermanagement", "createOrUpdateUserResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.verisign.com/pkiservices/2011/08/usermanagement",
      "createOrUpdatePasscode",
      [ [:in, "request", ["::SOAP::SOAPElement", "http://schemas.verisign.com/pkiservices/2011/08/usermanagement", "createOrUpdatePasscodeRequest"]],
        [:out, "response", ["::SOAP::SOAPElement", "http://schemas.verisign.com/pkiservices/2011/08/usermanagement", "createOrUpdatePasscodeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.verisign.com/pkiservices/2011/08/usermanagement",
      "getPasscodeInformation",
      [ [:in, "request", ["::SOAP::SOAPElement", "http://schemas.verisign.com/pkiservices/2011/08/usermanagement", "getPasscodeInformationRequest"]],
        [:out, "response", ["::SOAP::SOAPElement", "http://schemas.verisign.com/pkiservices/2011/08/usermanagement", "getPasscodeInformationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.verisign.com/pkiservices/2011/08/usermanagement",
      "getUserInformation",
      [ [:in, "request", ["::SOAP::SOAPElement", "http://schemas.verisign.com/pkiservices/2011/08/usermanagement", "getUserInformationRequest"]],
        [:out, "response", ["::SOAP::SOAPElement", "http://schemas.verisign.com/pkiservices/2011/08/usermanagement", "getUserInformationResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = UserManagementServiceMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = UserManagementServiceMappingRegistry::LiteralRegistry
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

