def to_arabic(key)

	hash5 = {'I' => 1,'IV' => 4, 'V' => 5, 'IX' => 9, 'X' => 10, 'XIV' => 14, 'XV' => 15, 'XVIII' => 19,'X' => 10, 'XL' => 40, 'L' => 50, 'LX' => 60, 'LXX' => 70, 'LXXX' => 80, 'XC' => 90, 'C' => 100, 'CD' => 400, 'D' => 500, 'CM' => 900,'M' => 1000}

	g = key.split('')
	h = g[0]
	i = g[1]
	j = g[2]
	k = g[3]

	if hash5.has_key?(key)
	 	 	puts hash5[key]

	elsif g[0] && g[1] && g[2] && g[4] == 'I' || 'V' || 'X' || 'L' || 'C' || 'M'
		c = hash5[h].to_i + hash5[i].to_i + hash5[j].to_i + hash5[k].to_i
			puts c

	elsif g[0] && g[1] && g[2] == 'I' || 'V' || 'X' || 'L' || 'C' || 'M'
		b = hash5[h].to_i + hash5[i].to_i + hash5[j].to_i
			puts b

	elsif g[0] && g[1] == 'I' || 'V' || 'X' || 'L' || 'C' || 'M'
		a = hash5[h].to_i + hash5[i].to_i
			puts a

	elsif g[0] == 'I' && g[1] == 'V' || 'X'
	  u = hash5[i].to_i - hash5[h].to_i
	  v = hash5[j].to_i
	 	 	puts  u + v

	elsif	g[0] == 'I' && g[1] == 'V' || 'X'
	  y = hash5[i].to_i - hash5[h].to_i
	  n = hash5[j].to_i
		o = hash5[k].to_i
 		puts y + n + o

	elsif g[0] == 'C' && g[1] == 'D'
		z = hash5[i].to_i - hash5[h].to_i
		n = hash5[j].to_i
		o = hash5[k].to_i
 		puts z + n + o

	elsif g[0] == 'X' && g[1] == 'L'
		q = hash5[i].to_i - hash5[h].to_i
		n = hash5[j].to_i
		o = hash5[k].to_i
 		puts q + n + o

	end
end

to_arabic('DV')

