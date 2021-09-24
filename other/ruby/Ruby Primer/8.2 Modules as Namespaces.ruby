

module A
    DATA = 7
    module B
        DATA = 6
        class C 
            @@size

            def initialize(size)
                @@size = size
            end
            
            def callsize()
                @@size
            end

            def printout
                15
            end
        end
    end
end

data = 5


myObject = A::B::C.new(5000)
puts(myObject.callsize())

myObject2 = A::B::C.new(50000)
puts(myObject2.callsize())
puts(myObject.callsize())
puts(A::DATA)
puts(A::B::DATA)
puts(A::B::C.new(400).printout)
print(myObject.class == A::B::C)


    
