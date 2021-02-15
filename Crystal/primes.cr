start = Time.monotonic

primes = [] of Int32

0.upto 15000 do |i|
  factors = [] of Int32
  1.upto i do |j|
    factors << j if i % j == 0
  end
  primes << i if factors.size == 2
end
puts primes

puts "Finished in:", Time.monotonic - start
