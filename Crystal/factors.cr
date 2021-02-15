start = Time.monotonic

NUM = 2000000000

1.upto NUM do |i| 
    puts "#{i} is a factor of #{NUM}" if NUM%i == 0 
end

puts "Finished in:",Time.monotonic-start


