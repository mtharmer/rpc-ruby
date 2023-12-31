# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: rpcgo.proto for package 'rpcgo'

require 'grpc'
require 'rpcgo_pb'

module Rpcgo
  module DoStuff
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'rpcgo.DoStuff'

      rpc :PrintHello, ::Rpcgo::HelloRequest, ::Rpcgo::HelloReply
      rpc :ProcessPerson, ::Rpcgo::PersonRequest, ::Rpcgo::PersonReply
    end

    Stub = Service.rpc_stub_class
  end
end
