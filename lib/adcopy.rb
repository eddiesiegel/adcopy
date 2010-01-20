# Adcopy
require 'view_methods'
require 'controller_methods'

module AdCopy
  CONFIG_FILE = "#{RAILS_ROOT}/config/adcopy_config.yml"
  CONFIG = YAML.load_file(CONFIG_FILE) if File.exist?(CONFIG_FILE)
  VERIFY_SERVER = 'http://verify.adcopy.com'
  API_SERVER = 'http://api.adcopy.com'
  SIGNUP_URL = 'http://portal.adcopy.com/portal/public/signup'
  
  class AdCopyError < StandardError
  end
  
  def self.check_for_keys!
    if !File.exist?(CONFIG_FILE) || CONFIG.nil? || CONFIG['C_KEY'].nil? || CONFIG['V_KEY'].nil? || CONFIG['H_KEY'].nil?
      raise AdCopyError, "AdCopy API keys not found. Keys can be obtained at #{SIGNUP_URL}"
    end
  end
end