def takoyaki_kanban(f)
	num = f.gets.chomp!.split(" ")
	name = f.gets.chomp!.split("")
	kit_str = f.gets.chomp!
	kit_a = kit_str.split("")
	kit_num = 1

	is_use_kit = false

	name.each {|word|
		if i = kit_a.index(word)
			kit_a.delete_at(i)
			is_use_kit = true
		else
			if !is_use_kit
				return -1
			end
			kit_a << kit_str.split("")
			kit_a.flatten!
			kit_num += 1
			is_use_kit = false
			redo
		end
	}
	return kit_num
end

f = STDIN
# f = open("test.txt")
puts takoyaki_kanban(f)
f.close

