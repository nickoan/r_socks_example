require 'r_socks'

server = RSocks::TcpServer.new
server.config.auth_method = :password
server.config.proxy_buffer_size = 0
server.config.proxy_type = :http

server.config.enable_ssl = true

server.config.ssl_private_key = './server_key.txt'
server.config.ssl_cert = './server_cert.txt'

server.run!