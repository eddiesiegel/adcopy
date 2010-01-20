module AdCopy
  module ViewMethods
    def adcopy_puzzle(options = {})
      AdCopy::check_for_keys!
      options = { :tabindex => nil,
                  :theme    => 'purple',
                  :lang     => 'en'
                  }.merge(options)
      
      output = ""
      
      output << %{<script type="text/javascript">\n}
      output << "	var ACPuzzleOptions = {\n"
      output << %{			tabindex:   #{options[:tabindex]},\n} unless options[:tabindex].nil?
      output << %{			theme:	    '#{options[:theme]}',\n}
      output << %{			lang:	    '#{options[:lang]}'\n}
      output << "	};\n"
      output << %{</script>\n}
      
      output << %{<script type="text/javascript"}
      output << %{   src="#{AdCopy::API_SERVER}/papi/challenge.script?k=#{AdCopy::CONFIG['C_KEY']}">}
      output << %{</script>}

      output << %{<noscript>}
      output << %{   <iframe src="#{AdCopy::API_SERVER}/papi/challenge.noscript?k=#{AdCopy::CONFIG['C_KEY']}"}
      output << %{	 height="300" width="500" frameborder="0"></iframe><br/>}
      output << %{   <textarea name="adcopy_challenge" rows="3" cols="40">}
      output << %{   </textarea>}
      output << %{   <input type="hidden" name="adcopy_response"}
      output << %{	 value="manual_challenge"/>}
      output << %{</noscript>}
      return output
    end
  end
end