start = Time.monotonic

1_i64.upto 50_i64 do |i|
    puts i,fib(i)
end

puts "Finished in:",Time.monotonic-start


def fib(n : Int64)
    return n if n<=1
    fib(n-1)+fib(n-2)
end