function fib(n)
	if n <= 1 then
		return n
	else
		return fib(n-1) + fib(n-2)
	end
end

start = os.clock()

for i = 1, 50 do
	print(i.." "..fib(i))
end

print(string.format("Time taken: %.2fs\n", os.clock() - start))
