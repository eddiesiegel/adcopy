namespace :adcopy do
  desc "Creates YAML file for API keys"
  task :setup do
    file_loc = "#{RAILS_ROOT}/config/adcopy_config.yml"
    
    if File.exist?(file_loc)
      puts "#{file_loc} exists. Nothing to do."
    else
      puts "Creating #{file_loc}"
      file = File.new(file_loc, 'w')
      file.puts "C_KEY: your_c_key_here"
      file.puts "V_KEY: your_V_key_here"
      file.puts "H_KEY: your_H_key_here"
      puts "Don't forget to put your own API keys in adcopy_config.yml"
    end
  end
end