class Sherif

	def self.hash_answers
		@hash_answers = 	['Hashes are kind of like you are walking in the forest, it doesn\'t matter how you get out of the forest,
 									right? Just get the fuck out!','Hashes... yeah so you just kind of have to get in there and figure it out, right?',
 									'So yeah, hashes are a motherfucker at the beginning, just keep swimming man, you\'ll get there.',
 									"I don't know man, I don't know."].sample
 		end
 		def self.git_answers
			@git_answers = 	['Yeah, Github... Just do the branches challenge and you\'ll be totally fine.',
								"Are you locked in? No... OK, well we\'ll talk about that later.",
								"You're trading your time for something here, right? Does that make sense? So like, figure out what you want and trade your time for that, right?"].sample
		end

		def self.assert_answers
			@assert_answers = ['Have you guys seen the new X-Men movie? Because assert is a lot like Kevin Bacon....','So Keven Bacon is all like swoosh wizz bang, and the General is all like "AHHHHHHHHHHHH"'].sample
		end
		def self.string_answers
		@string_answers = ['Strings are just another data structure, end of discussion, end of story.',
 					        'Strings are just text.',
        					"If you don't know strings by now... Ask more questions!!",
        					"You're trading your time here, right? For strings... I mean, c'mon."].sample
    end

    def self.array_answers
		@array_answers = ['Arrays are just another data structure, end of discussion, end of story.',
        					"If you care about order use arrays...",
        					"If you don't know arrays by now... ask more questions!!!",
        					"What the shit?! Arrays just store things... cool?"].sample
     	
    end

    def self.finish
		@finisher = ["Ya know?", 
						'You know what I\'m saying?', 
						"Everybody cool?", 
						'Are you following me?',
						"Am I making sense?", 
						'Ya get what I\'m saying?', 
						"OK, so if you're solid then you can bail, I don't care.",
						"Like if you're good then great, but if not... let me know. Like now is the time, don't wait.",
						"Yeah man, that's great, but whatever, ya know?",
						"Whatever, it doesn't matter. Am I making sense?",
						"Does that make sense?",
						"Is that OK?"].sample
    	
    end

		def self.general_answers
			@general_answers = [
									"This whole thing is your experience, ya get me... It's like a 'choose your own adventure book'.",
									"What the shit?",
									"I don't know, you tell me.",
									"So there are these three blind men and an elephant...",
									"I mean, it's not difficult, right?",
									"It's just syntax, it doesn't matter.",
									"But... does it really matter?",
									"So you're trading your time for some magic sauce, right? But the truth is there is no magic sauce. You just have to do the shit for you...",
									"There was this traveler and a wise man... Long story short, they drink a lot and get high.",
									"There is no magic sauce for your bag of tricks... like, that's not why you're here."].sample
		end

	def self.clear_screen!
  	print "\e[2J"
	end

	# Moves cursor to the top left of the terminal
	def self.move_to_home!
  	print "\e[H"
	end

	def self.main
		Sherif.clear_screen!
		Sherif.move_to_home!
		File.open('face.txt').each do |line|
			puts "                                                 #{line.chomp}"
		end
		puts "\n                                                                \"You guys need to be asking me more questions.\""
		print "Question: "
		input = gets.chomp.downcase
		puts "\n"
		case 
		when input == ''
			return
		when input.include?('string')
			puts Sherif.string_answers
			puts "\n"
			puts Sherif.finish
			input = gets.chomp
			Sherif.main
		when input.include?('array')
			puts Sherif.array_answers
			puts "\n"
			puts Sherif.finish
			input = gets.chomp
			Sherif.main
		when input.include?('hash')
			puts Sherif.hash_answers
			puts "\n"
			puts Sherif.finish
			input = gets.chomp
			Sherif.main
		when input.include?('git')
			puts Sherif.git_answers
			puts "\n"
			puts Sherif.finish
			input = gets.chomp
			Sherif.main
		when input.include?('assert')
			puts Sherif.assert_answers
			puts "\n"
			puts Sherif.finish
			input = gets.chomp
			Sherif.main
		else
			puts Sherif.general_answers
			puts "\n"
			puts Sherif.finish
			input = gets.chomp
			Sherif.main
		end
	end
end

Sherif.main

