class AdcopyConfigGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.file "adcopy_config.yml", "config/adcopy_config.yml"
    end
  end
end