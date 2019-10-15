# require 'json'

# class ServiceObjects
#   include HTTParty

#   def incluir_certificado(resquest_body)
#     body = resquest_body
#       @response = HTTParty.post("#{$base_url['service'][$ambiente_execucao]['url']}/meu_endpoint", :body => body.to_json,
#            :headers => {'Content-Type' => 'application/json',
#                      'Authorization' => ''})
#       return @response
#   end
# end
