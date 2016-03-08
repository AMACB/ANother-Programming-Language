#!/usr/bin/ruby
require_relative 'tokenize'

# must take one argument
if ARGV.length != 1
	puts "Invalid arguments, use \"cat somefile.anpl | ./interpret.rb \""
	exit()
end

if !ARGV.include? "\n" && ARGV.end_with? ".anpl"
	# data = readfile
else
	# data = argument
end

# initialize
data = ARGV[0] # string to read
stack = [] # stack

puts tokenize(data)
