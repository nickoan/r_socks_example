require 'r_socks'

server = RSocks::TcpServer.new
server.config.auth_method = :password
server.config.proxy_buffer_size = 10 * 1024 * 1024
server.config.proxy_type = :http

# if true then you need attach cert and private key
server.config.enable_ssl = false
# server.config.ssl_private_key = './server_key.txt'
# server.config.ssl_cert = './server_cert.txt'

# start multi process
server.config.instances = 2



server.run!