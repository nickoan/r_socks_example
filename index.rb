require 'r_socks'

server = RSocks::TcpServer.new
server.config.auth_method = :password
server.config.proxy_buffer_size = 30 * 1024 * 1024
server.config.proxy_type = :http

server.run!