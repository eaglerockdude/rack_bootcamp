require 'rack'
require 'rack/server'

#Rack::Response is an abstraction build around the response triplets(headers, cookies, body).
class HelloWorldApp
  def self.call(env)
    response = Rack::Response.new
    response.write "Dude where's my car?"
    response.body = ['Setting dude directly.']
    response['X-Custom-Header'] = 'foo'
    response.set_cookie 'bar', 'baz'
    response.status = 202
    response.finish # return the generated triplet
  end
  end
Rack::Server.start :app => HelloWorldApp