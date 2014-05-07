class Overworld < Game
	
	def intro
		text = <<MY_HEREDOC
\n------------------------- OVERWORLD -------------------------\n
	After a long ride from the Toad Town, finally, you unmount from the military turtle and head to the area of Overworld. It is set on a grassland with many bushes, hills, and trees inhabited mainly by Goombas and Koopa Troopas. The two cratures which are well known as unfriendly enemies of Toads \(Mushroom People\). Well.. there must be a reason why it is called over-world right?\n
	You walk for half an hour and then you see the sign saying \"No Entrance for Toads\". Hmm.. There is no way back you keep walking and then bunch of Goombas notice you coming. They are coming on your way with frown faces.\n
_______________8888888888_______________
______________888888888888______________
________█████88888888888888█████________
___________8██888888888888██8___________
__________888███88888888███888__________
_________88888██88888888██88888_________
________888881111118881111118888________
_______88888811██1188811██1188888_______
______888888811██1188811██11888888______
______888888811██1188811██11888888______
______8888888111111888111111888888______
______8888888888888888888888888888______
______8888888888888888888888888888______
______8888888888888888888888888888______
______8888888888888888888888888888______
__________88888111111111188888__________
__________88888111111111188888__________
_____________11111111111111_____________
_____________11111111111111_____________
_____________111111111111███____________
_____________11111111111█████___________
_____________███111111████████__________
____________█████1111█████████__________
____________█████11111███████___________
_____________███11111111████____________

	Think!! What would you do??

	
MY_HEREDOC
	end #end of Over world Intro function
	
	
#----------------------------------------BONUS FUNCTION ------------------------------------------#	
	def bonus
		
		puts "You keep doing that until you are tired and realize that you have too less power to keep doing this the whole day. You will need something that makes you stronger!"
		
		section_completed = false
		
		while section_completed == false do
		
			prompt
			action = gets.chomp.downcase
			
			if action.include? "mushroom"
				section_completed = true
				mushroom("Exactly right Mario.") #call bonus mushroom
				puts "Now as you getting stronger the goombas are too scared so they finally leave you alone. Even the Koopa Troopas do not want to mess with you. You reach the Warp Pipe in a very short time."
				
			elsif action.include? "don\'t know" or action.include? "no idea" or action.include? "do not know"
				section_completed = true
				puts "That's alright Mario. Sometimes, being strong does not help but being smart will do!"
				puts "Little Mario.. you spend another hour fighting with the goombas but it seems like even more troubles are about to come. The sun has setted behind you. It's getting dark and cold ahead of you. You are so hungry and tired so you decide to set up a camp for resting one night in this jungle."
				#Call jungle class
				new_jungle = Jungle.new
				new_jungle.play
				
			elsif action.include? "skip" or action.include? "pass this"
				section_completed = true
				puts "That's alright Mario. Sometimes, being strong does not help but being smart will do!"
				puts "Little Mario.. you spend another hour fighting with the goombas but it seems like even more troubles are about to come. The sun has setted behind you. It's getting dark and cold ahead of you. You are so hungry and tired so you decide to set up a camp for resting one night in this jungle."
				#call jungle class
				new_jungle = Jungle.new
				new_jungle.play
				
			elsif action.include? "go back"
				section_completed = true
				puts "Huh...You walk back the same way you have came. Anyhow, it takes so long until it's getting dark. You have to stay one night in the jungle."
				#call jungle class
				new_jungle = Jungle.new
				new_jungle.play
				
			elsif action.include? "suicide"
				puts "The Goombas keep on attacking you. You get so down and tired.. you think you would not survive this.."
				suicide
				
			elsif action == ""
				no_action
			else
				puts "okay... well.."
				wrong_input
			end
		end #end while loop
		
		#call underground class
		
	end #end of mushroom bonus
	
	
	
#---------------------------------------- PLAY FUNCTION ------------------------------------------#
	def play
		
		puts intro
		section_completed = false
		
		while section_completed == false do
		
			prompt
			action = gets.chomp.downcase
			
			if action.include? "jump"
				puts "You jump and escape one of them. But look ahead they are still coming!! What next?"
		
			elsif action.include? "kill"
				section_completed = true #set section complete = true
				puts "You jump quick on them. The Goombas were beaten flat to the ground."
				puts "You jump, jump... and jump again. The Goombas were beaten and you head forward with no fear. You hit the bricks on the way as they release coins for you when they break down."
				
				
			elsif action.include? "sing"
				section_completed = true
				puts "You do not want to harm them as you know it would create even more conflicts in the kingdom."
				puts "So you start singing..."
				#call underground
				
			elsif action.include? "go back"
				dead("{@go_back}")
		
			elsif action.include? "suicide"
				suicide
			elsif action == ""
				no_action
			else
				puts "okay... well.."
				wrong_input
				
			end # end if
			end #end of While loop
		
		bonus #call mushroom
		
	end #end of play function
	
	
	
	
	
end #end of Overworld class