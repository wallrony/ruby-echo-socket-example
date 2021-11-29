require 'socket'

def log(message)
  puts format_log_message(message)
end

def format_log_message(message)
  return "[ECHO] #{message}"
end

socket = TCPServer.new(4545)

log("Server is online on Port 4545")

while client = socket.accept
  _, port, host, _ = client.addr
  request = client.gets
  log("Message received by #{host}:#{port}: #{request}")
  client.puts(format_log_message(request))
  client.close
end

socket.close
