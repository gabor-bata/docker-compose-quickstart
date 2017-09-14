require 'sinatra'
require 'redis'

set :port, 5000
set :bind, '0.0.0.0'

redis = Redis.new(host: 'redis', port: 6379)

get '/' do
  count = redis.incr 'hits'
  "Hello World! I have been seen #{count} times."
end
