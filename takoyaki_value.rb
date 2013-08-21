def takoyaki_value(f)
	num = f.gets.chomp!.to_i
	one_value = 15
	ten_value = 100
	value = 0

	while num > 10 do
		num -= 10
		value += ten_value
	end

	if one_value * num < ten_value
		value += one_value * num
	else
		value += ten_value
	end
	
	return value
end

f = STDIN
puts takoyaki_value(f)
f.close

