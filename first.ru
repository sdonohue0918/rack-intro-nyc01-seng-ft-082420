require 'rack'
 
# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ['<em>Hello</em>']]
end
 
run my_server

# class MyServer 
#     def call(env)
#         return [ 200, {'Content-Type' => 'text/html'}, pretty_response]
#     end

#     def pretty_response
#         (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
#     end
# end

# run MyServer.new