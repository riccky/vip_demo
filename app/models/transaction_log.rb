class TransactionLog < ActiveRecord::Base
  belongs_to :user
  attr_accessible :ia_auth_data, :ia_result, :ip_address, :request_id, :user_agent, :user_id, :bank_code, :dst_account, :amount
  serialize :ia_result, Hash

  IP_ADDRESSES = [
    ["Japan - Tokyo (210.158.208.7)", "210.158.208.7"],
    ["Japan - Yokohama (Konan) (124.255.81.42)", "124.255.81.42"],
    ["Australia - Melbourne (220.239.99.122)", "220.239.99.122"],
    ["Australia - Sydney (61.9.195.3)", "61.9.195.3"],
    ["USA - Mountain View, CA (64.233.183.104)", "64.233.183.104"],
    ["USA - Dallas, TX (216.239.115.173)", "216.239.115.173"],
    ["USA - Campbell, CA (66.135.192.123)", "66.135.192.123"],
    ["USA - Chicago, IL (66.225.255.221)", "66.225.255.221"],
    ["Israel - Petach Tikva (212.25.69.143)", "212.25.69.143"],
    ["China - Guangzhou (61.145.127.128)", "61.145.127.128"],
    ["FRAUD Bulgaria - high risk country (82.199.192.2)", "82.199.192.2"],
    ["FRAUD Vietnam - FIN watchlist IP (222.254.230.190)", "222.254.230.190"],
    ["FRAUD Unallocated IP (198.153.255.0)", "198.153.255.0"]
  ].freeze

  USER_AGENTS = [
    ["Windows 7 - Internet Explorer 9", "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; BRI/2)"],
    ["Windows 7 - Firefox 14", "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1"],
    ["Windows Vista - Internet Explorer 7", "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0)"],
    ["Windows Vista - Firefox 2.0", "Mozilla/5.0 (Windows; U; Windows NT 6.0; ja-JP; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.11"],
    ["Windows XP - Internet Explorer 7", "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)"],
    ["Windows XP - Internet Explorer 6", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)"],
    ["Windows XP - Firefox 2.0", "Mozilla/5.0 (Windows; U; Windows NT 5.1; ja-JP; rv:1.8.1.11) Gecko/20071127 Firefox/2.0.0.11"],
    ["Windows XP - Opera 9.20", "Opera/9.20 (Windows NT 5.1; U; ja)"],
    ["Mac OS X - Safari", "Mozilla/5.0 (Macintosh; U; PPC Mac OS X; ja) AppleWebKit/125.2 (KHTML, like Gecko) Safari/125.8"],
    ["Mac OS X - Firefox 1.0.7", "Mozilla/5.0 (Macintosh; U; PPC Mac OS X Mach-O; ja-JP; rv:1.7.12) Gecko/20050915 Firefox/1.0.7"],
    ["Linux - Firefox 2.0", "Mozilla/5.0 (X11; U; Linux i686; ja-JP; rv:1.8.1.11) Gecko/20071204 Ubuntu/7.10 (gutsy) Firefox/2.0.0.11"],
    ["Linux - Konqueror 4.0", "Mozilla/5.0 (compatible; Konqueror/4.0; Linux; x86_64) KHTML/4.0.2 (like Gecko)"]
  ].freeze

end
