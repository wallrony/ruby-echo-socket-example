require 'socket'

socket = TCPSocket.open('localhost', 4545)
socket.puts('Hello world')

response = socket.gets
puts response
socket.close
