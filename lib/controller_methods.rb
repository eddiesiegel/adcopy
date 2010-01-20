module AdCopy
  module ControllerMethods
    def verify_adcopy_puzzle(options = {})
      AdCopy::check_for_keys!
      options = { :validate_response  => true,
                  :timeout            => 5,
                  :model              => nil,
                  :error_message      => nil
                }.merge(options)
      
      #Send POST to AdCopy
      response = nil
      Timeout::timeout(options[:timeout]) do
        response = Net::HTTP.post_form URI.parse("#{AdCopy::VERIFY_SERVER}/papi/verify"), {
          "privatekey"  =>  AdCopy::CONFIG['V_KEY'],
          "challenge"   =>  params[:adcopy_challenge],
          "response"    =>  params[:adcopy_response],
          "remoteip"    =>  request.remote_ip
        }
      end
      answer, error, authenticator = response.body.split("\n")
      
      #validate the response
      if options[:validate_response] && authenticator != Digest::SHA1.hexdigest("#{answer}#{params[:adcopy_challenge]}#{AdCopy::CONFIG['H_KEY']}")
        raise AdCopyError, "AdCopy Error: Unable to Validate Response" 
      end
      
      if answer.downcase == "true"
        return true
      else
        if options[:model]
          options[:model].valid?
          options[:model].errors.add_to_base options[:error_message] || "AdCopy Puzzle: #{error}"
        end
        
        return false
      end
    end
  end
end