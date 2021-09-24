# frozen_string_literal: true

begin
  IO.sysopen('/home/asdas')
rescue Errno::ENOENT
  puts('file not found')
rescue Errno::EACCES
  puts('not allowed to opem file')
end

def get_null_device
  IO.sysopen('/home/lol')
rescue Errno::ENOENT
  puts('file not found')
end

get_null_device

["a.txt", "b.txt", "c.txt"].map do |f|
  IO.sysopen(f)
rescue Errno::ENOENT
  puts "Can't open IO device: #{f}."
end

