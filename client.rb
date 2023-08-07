this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)

require 'grpc'
require 'openssl/x509'
require 'rpcgo_services_pb'
require 'dotenv'

def main
  Dotenv.load("./.env")
  user = ARGV.size > 0 ?  ARGV[0] : 'world'

  hostname = ENV['RPC_HOSTNAME']
  cert_file = ENV["CERT_FILE"]

  creds = GRPC::Core::ChannelCredentials.new(File.read(cert_file))
  call_creds = GRPC::Core::CallCredentials.new(proc { {"authorization" => "Bearer " + ENV["SECRET_KEY"]} })

  stub = Rpcgo::DoStuff::Stub.new(hostname, creds)
  begin
    message = stub.print_hello(Rpcgo::HelloRequest.new(name: user), credentials: call_creds).message
    p "Greeting: #{message}"
  rescue GRPC::BadStatus => e
    abort "ERROR: #{e.message}"
  end
end

main
