def get_birthdate
	print "When is your birthday(format: MMDDYYYY)?"
	birthday = gets
end


birthdate = birthday.split ""
bd1 = birthdate[0].to_i
bd2 = birthdate[1].to_i
bd3 = birthdate[2].to_i
bd4 = birthdate[3].to_i
bd5 = birthdate[4].to_i 
bd6 = birthdate[5].to_i
bd7 = birthdate[6].to_i
bd8 = birthdate[7].to_i
step1 = bd1+bd2+bd3+bd4+bd5+bd6+bd7+bd8

if (step1 > 9)
	step2 = step1.to_s 
	step2.split "" 
	r1 = step2[0].to_i 
	r2 = step2[1].to_i 
	path_num = r1+r2 
end

case (path_num)
	when 1
		puts "Your number is #{path_num}. One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		puts "Your number is #{path_num}. This is the mediatore and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		puts "Your number is #{path_num}. Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Threes enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		puts "Your number is #{path_num}. This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus." 
	when 5 
		puts "Your number is #{path_num}. This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6 
		puts "Your number is #{path_num}. This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7 
		puts "Your number is #{path_num}. This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8 
		puts "Your number is #{path_num}. This is the manager. Number eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		puts "Your number is #{path_num}. This is the teacher. Number nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	else 
		puts "Your number is #{path_num}. You must be exceptional!"
	end
