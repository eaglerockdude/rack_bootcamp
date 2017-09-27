require 'rack'
require 'rack/server'

# test grabbing QUERY_STRING from env...call with http://localhost:9292?message=foo
class HelloWorldApp
  def self.call(env)
    [ 200, { }, [ "Hello World. You said: #{env['QUERY_STRING']}" ]]
  end
end

Rack::Server.start :app => HelloWorldApp