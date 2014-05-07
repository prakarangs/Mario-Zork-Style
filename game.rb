class Game

	def initialize
		@quips =["You died desparately.",
			"That was the most embarrassed decision any toads ever made.",
			"Too bad..You died all alone.",
			"You lose!",
			"Fool!! You little selfish Mario!!"
			]
		@suicide =["Aurggggg.... THIS! This whole thing is driving you crazy!! You poison yourself to death",
			"You do not want this anymore.. You jump off into the abyss and died all alone.",
			"You hang yourself on the tree. You lose!",
			"Bad choice.. Good bye Mario..",
			"You take out the poison mushroom and eat it. You died!"
			]
		@bonus = ["Mushroom!! You eat it and grow bigger!",
			"Smart Mario. You know what you gotta do. The mushroom makes you stronger!",
			"Mushroom is great and it's super yummy! Power-up now it's just a piece of cake!",
			]
		@run_away = "Coward.. you have just destroyed the pride of Nintendo's fans!!!"
		@go_back = "Seriously..? after all of these you wanna go back. Selfish!"

	
	end

	def prompt
		print "\n >"
	end
	
	def mushroom(say) #bonus mushroom
		puts "\n#{say} \a" + @bonus[rand(@bonus.length)]
	end

	def dead(reason)
		puts "\n#{reason} \a" + @quips[rand(@quips.length)]
		Process.exit(0)
	end
	
	def no_action
	
		puts "You didn't make a move. Please try again."
	end

	def suicide
		puts @suicide[rand(@suicide.length)]
		Process.exit(0)
	end
	
	def wrong_input
		puts "That didn't really help Mario proceed anything. Try again."
	end

end