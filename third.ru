require_relative './my_server'
run MyServer.new


# Now we're honoring the way most Rack applications are built: the server setup code lives in the rackup file and our application logic lives in a class that's referenced by the run command in the rackup file.

