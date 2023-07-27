#!/usr/bin/ruby
require 'debug'
require 'webrick'

root = File.expand_path Dir.pwd
server = WEBrick::HTTPServer.new :Port => 8000, :DocumentRoot => root
# Make new.html the root page
server.config[:DirectoryIndex] << "new.html"

trap 'INT' do server.shutdown end

server.start
