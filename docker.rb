require 'rake'
require 'docker'

Docker.url = 'unix:///var/run/docker.sock'

puts Docker

puts Docker.url

puts Docker.options

puts Docker.version

puts Docker.info