def tokenize(s)
	tokens = []
	lines = s.split("\n")
	notCommands = "[]{}\"'0123456789"
	n = 0
	lines.each do |l|
		# ignore comments
		if (l.length == 0 or l.strip.start_with? "@")
			next
		end

		# line number (for debug)
		n = n+1
		# tokenize
		current = 0
		len = l.length
		while current <= len and not l == ''
			if not notCommands.include? l[0].to_s
				tokens.push(l[0])
				l = l[1..-1]
				current += 1
			# string tokenization
			elsif l[0] == "\""
				ending = l.index("\"",1)
				if ending == nil
					puts l
					throw Exception.new("TokenizeError: unmatched \" at "+n.to_s+":"+current.to_s)
				end
				tokens.push(l[0..ending])
				current += (ending)
				l = l[ending+1..-1]
			else
				l = l[1..-1]
				current += 1  
			end
		end
	end
	tokens
end
puts tokenize("\"hi\"hi\"string00\"")
