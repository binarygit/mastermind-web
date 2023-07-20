#!/usr/bin/ruby
require 'debug'
require 'webrick'

root = File.expand_path Dir.pwd
server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root
trap 'INT' do server.shutdown end

server.start
