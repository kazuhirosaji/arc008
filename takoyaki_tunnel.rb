def takoyaki_tunnel(f)
	n, m = f.gets.chomp!.split(" ")
	max = 1
	min = 1
	a = []
	b = []
	for i in 0..(n.to_i - 1) do
		a[i] = 1
		b[i] = 0
	end

	for i in 0..(m.to_i - 1) do
		temp = f.gets.chomp!.split(" ")
		tid = temp[0].to_i - 1
		a[tid] = temp[1].to_f
		b[tid] = temp[2].to_f
		value = 1
		for j in 0..(n.to_i - 1) do
	#		puts "#{value} * #{a[j]} + #{b[j]}"
			value = value * a[j] + b[j]
	#		puts "=#{value}"
		end
		puts "no#{i} : #{value}"
		if value < min
			min = value
		elsif value > max
			max = value
		end
	end
	puts "a=#{a}"
	puts "b=#{b}"
	puts "max=#{max}"
	puts "min=#{min}"
end

f = STDIN
f = open("takoyaki_tunnel.txt")
puts takoyaki_tunnel(f)
f.close

