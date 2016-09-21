puts "How do I love thee? Shall we count like Elizabeth Barrett Browning? (y/n)" 
answer = gets.chomp.downcase

count_the_ways = ["To the depth, breadth, and height soul can reach?", 
	"To the level of every day's most quiet need?", 
	"Freely and purely?", 
	"With passion put to use in old griefs?", 
	"With a love lost with our lost saints?", 
	"With the breath, smiles, and tears of all my life?"
]

if (answer == "y")
	count_the_ways.each do |question_asked| #this didn't work. maybe try a simpler example for each? 
		puts question_asked
		question_answer = gets.chomp.downcase
			if (question_answer == "y")
				puts "Me too."
			else
				puts "I still love you, in at least #{question_asked - 1} ways."
				exit
			end
			puts "That's #{questions_asked} ways."	
		end
else
	puts "I love you anyway."
end
