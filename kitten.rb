require 'open-uri'

kittens = open('http://placekitten.com/')
response_status = kittens.status
response_body = kittens.read[559, 441]

puts response_status
puts response_body

# Open http://placekitten.com/ for reading on line 4!
kittens = open('http://placekitten.com')
body = kittens.read[559, 441]

# Add your puts statement below!
puts body
