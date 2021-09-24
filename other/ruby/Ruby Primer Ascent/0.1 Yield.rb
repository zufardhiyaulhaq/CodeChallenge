def foo
  if block_given?()
    yield
  end
end

foo()
foo() { puts "lol" }
foo() { puts 1+1 }

