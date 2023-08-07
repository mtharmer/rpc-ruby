# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: rpcgo.proto

require 'google/protobuf'


descriptor_data = "\n\x0brpcgo.proto\x12\x05rpcgo\"\x1c\n\x0cHelloRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\"\x1d\n\nHelloReply\x12\x0f\n\x07message\x18\x01 \x01(\t\"8\n\rPersonRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0b\n\x03\x61ge\x18\x02 \x01(\x05\x12\x0c\n\x04\x63ity\x18\x03 \x01(\t\".\n\x0bPersonReply\x12\x0f\n\x07message\x18\x01 \x01(\t\x12\x0e\n\x06status\x18\x02 \x01(\x05\x32~\n\x07\x44oStuff\x12\x36\n\nPrintHello\x12\x13.rpcgo.HelloRequest\x1a\x11.rpcgo.HelloReply\"\x00\x12;\n\rProcessPerson\x12\x14.rpcgo.PersonRequest\x1a\x12.rpcgo.PersonReply\"\x00\x42\"Z github.com/mtharmer/rpc-go/rpcgob\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Rpcgo
  HelloRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("rpcgo.HelloRequest").msgclass
  HelloReply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("rpcgo.HelloReply").msgclass
  PersonRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("rpcgo.PersonRequest").msgclass
  PersonReply = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("rpcgo.PersonReply").msgclass
end
