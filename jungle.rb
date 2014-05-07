class Jungle < Game
	
	def intro
		text = <<MY_HEREDOC
\n------------------------------------------------------------------------------------------\n
\n---------------------------		JUNGLE OF OVERWORLD			----------------------------\n
\n------------------------------------------------------------------------------------------\n
It's not easy staying one night in the jungle of overworld. You always have to be careful with all of the movements you make. You hear noises made by different kinds of monsters.. You can not really sleep at all but surely one creature can. \n

You have been hearing the snoring sound the whole night until this morning. You get up still tired.. You start moving again. You follow the loud shaking noise to almost the deepest part of the jungle and there you see the huge Koopa Troopas sleeping happily on the Warp Pipe! \"Shit\" You swear spontaneously and almost wake it up. The giant monster is half asleep but checking around with frustration. You hide back behind the tree. You got to do something to the Koopa Troopas. It has to move away so you can use that Warp Pipe.\n
Do something to that turtle!
MY_HEREDOC
		
	end #end of intro
	
	
	
	
#---------------------------------------- PLAY FUNCTION ------------------------------------------#
	def play
		puts intro
		section_completed = false
		
		while section_completed == false do
			
			prompt
			action = gets.chomp.downcase
			if action.include? "sing"
				puts "You decided to sing again."
				puts "Unfortunately, The turtle get so pissed because you wake him up!"
				dead("You become his breakfast!")
			elsif action.include? "kill" or action.include? "shoot" or action.include? "hit"
				puts "The turtle is too big so he only feels itchy and pissed for that!"
				dead("The turtle eat you for breakfast.")
			elsif action.include? "tickling" 
				section_completed = true
				puts "The turtle laughs his ass off and fall over to the ground."
				puts "Good job Mario! You use the warp pipe to the next stage."
			
			elsif action.include? "mushroom"
				puts "No more much room left for you in this stage Mario. Try again."
				
			elsif action.include? "go back"
				dead("{@go_back}")
				
			elsif action.include? "suicide"
				suicide
			elsif action == ""
				no_action
			else
				puts "okay... well.."
				wrong_input
				
			end #end if
			
		end #end of while loop
		
		#call underground
		
		
	end #end of play function
	
	
end #end of Class Jungle