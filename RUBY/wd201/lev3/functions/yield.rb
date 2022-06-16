## We can use the yield keyword to execute
#  the block passed to our function. Let's
#  take a look at a simple example:

def check
  yield
end

check{
    def even_odd(num)
        if  num%2 == 0
            p "it is even"
        else
           p "it is odd"
        end
    end
    even_odd(21)
}
