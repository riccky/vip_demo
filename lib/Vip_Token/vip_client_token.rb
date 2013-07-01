module VipToken::VipClientToken
  require "#{Rails.root}/lib/Vip_Token/defaultDriver.rb"

  class VipClientToken
    def initialize(uri_path)
      @driver = VipSoapInterface.new("https://vipservices-auth.verisign.com/" + uri_path)
      @driver.loadproperty("#{Rails.root}/config/vip_auth.properties")
    end

    def validate_cr(token_id, challenge_n, challenge_h, response)
      token_ids = TokenIdType.new(token_id)
      req = ValidateCRType.new(nil, token_ids, challenge_n, challenge_h, response, false)
      req.xmlattr_Id = "abcd1234"
      req.xmlattr_Version= "2.0"
      convert_endian(@driver.validateCR(req))
    end

    private
    # エンディアン変換
    def convert_endian(ret)
      rcbyte = [ret::status::reasonCode].pack("H*")
      rcbyte = rcbyte.unpack("N*")
      rc = rcbyte.pack("N*")
      return rc
    end
  end
end
