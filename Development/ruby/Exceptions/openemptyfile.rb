begin
    IO.sysopen('/home/asdas')
rescue
    puts("cannot open IO device")
end
