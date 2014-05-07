class Throne_room < Game
	
	def intro
	text = <<MY_HEREDOC
\n**************************************************************************\n
	..You put down the letter, lock the door and go to the palace without hesitation. After arriving, you step into the main corridor. The whole palace is quiet and you can feel the sorrowness in every corner. You walk a long way passing number of soliders until you reach the gate of throne room.\n
	Two guards open that gate to let you in. The first thing you see is the king and his army chief talking to each other with such a serious face while the queen is sitting next to the meeting table .. weeping. The king turn attention to you his face is now less intense. Saying "Finally Mario, I'm so glad you are here. Please take a seat."\n
	You have heard of the the kidnapping of Princess Peach already from other toads. However,the king has the army chief explain all the details of how and when the princess was kidnapped again. The chief said it was False Bowser who kidnapped your dearest princess. You know well how dangerous this monster is and the king asks you to rescue his dearest princess. He would give everything you want he promises. You agreed to help him. The chief gives you different maps and the first one lead you to "Overworld".\n
	Are you ready??? If so type in the destination to proceed.

MY_HEREDOC
		
	end #end of function intro
	
	
	
#---------------------------------------- PLAY FUNCTION ------------------------------------------#
	
	def play
		puts intro
		section_completed = false
		while section_completed == false do
			prompt
			action = gets.chomp.downcase #action from users
			
			if action.include? "overworld"
				section_completed = true
				puts "You decide to start at Overworld. Good luck Mario!"
				new_overworld = Overworld.new #create new object of Overworld
				new_overworld.play # call play Overworld!
				
			elsif action.include? "suicide"
				puts "You get nervouse.. It's too big for you to do it all alone!!"
				suicide
			elsif action == ""
				no_action
			else
				wrong_input
			end
			
		end #end of while loop
	end #end of function play
	
end # end of Throne_room class