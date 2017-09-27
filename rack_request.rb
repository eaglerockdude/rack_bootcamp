require 'rack'
require 'rack/server'

#Rack::Request is just a proxy/abstraction for env
class HelloWorldApp
  def self.call(env)
    request = Rack::Request.new env
    request.params # contains the union of GET and POST params
    request.xhr? # requested with AJAX
    request.body # the incoming request IO stream
    if request.params['message']
      [ 200, { }, [request.params['message']  ] ]
    else
      [400, {}, ['There is no message passed.']]
    end
  end
end
Rack::Server.start :app => HelloWorldApp