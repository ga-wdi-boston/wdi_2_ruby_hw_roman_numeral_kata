
def to_roman(num)

	hash1 = {''=> 0, 'I' => 1, 'II' => 2, 'III' => 3, 'IV' => 4, 'V' => 5, 'VI' => 6, 'VII' => 7, 'VIII' =>8, 'IX' => 9, 'X' => 10, 'XI' => 11, 'XII' => 12, 'XIII' => 13, 'XIV' => 14, 'XV' => 15, 'XVI' => 16, 'XVII' => 17, 'XVIII' => 18, 'XIX' => 19}

	hash2 = {'' => 0, 'SX' => 1, 'XX' => 2, 'XXX' => 3, 'XL' => 4, 'L' => 5, 'LX' => 6, 'LXX' => 7, 'LXXX' => 8, 'XC' => 9}

	hash3 = {'' => 0, 'C' => 1, 'CC' => 2, 'CCC' => 3, 'CD' => 4, 'D' => 5, 'DC' => 6, 'DCC' => 7, 'DCCC' => 8, 'CM' => 9}

	hash4 = {'M' => 1, '0' => 0}


	 if num >= 1 && num <= 19
	 	y = hash1.key(num)
	 	puts y

	 elsif num >= 20 && num <= 99
	 	z = num.to_s.split('')
	 	z.delete('0')
	 	a = z[0].to_i
	 	b = z[1].to_i
	 	c = hash2.key(a)
	 	d = hash1.key(b)
	 		puts c + d

	 elsif num >= 100 && num <= 999
	 	e = num.to_s.split('')
	 	f = e[0].to_i
	 	g = e[1].to_i
	 	h = e[2].to_i
	 	i = hash3.key(f)
	 	j = hash2.key(g)
	 	k = hash1.key(h)
	 	puts i + j + k

	 else num >= 1000 && num <= 2000
	 	l = num.to_s.split('')
	 	m = l[0].to_i
	 	n = l[1].to_i
	 	o = l[2].to_i
	 	p = l[3].to_i
	 	q = hash4.key(m)
	 	r = hash3.key(n)
	 	s = hash2.key(o)
	 	t = hash1.key(p)
	 	puts q + r + s + t
	 end
end

to_roman(66)





