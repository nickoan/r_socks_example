require 'r_socks'

server = RSocks::TcpServer.new
server.config.auth_method = :password

server.run!