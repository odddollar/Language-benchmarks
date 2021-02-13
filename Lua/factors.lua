start = os.clock()

num = 2000000000

for i = 1, num+1 do
	if num % i == 0 then
		print(i.. " is a factor of "..num)
	end
end

print(string.format("Time taken: %.2fs\n", os.clock() - start))
