require 'rack'
require 'rack/server'

# see the env structure
class EnvInspect
  def self.call(env)
    [ 200, { }, [ env.inspect ] ]
  end
end

Rack::Server.start :app => EnvInspect