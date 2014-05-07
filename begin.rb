class Begin < Game

	def intro
	welcome = <<MY_HEREDOC
		
\n***********************************************************************************\n
Mario adventure : Mario Saves The Princess <3
        
Tweet.. Tweet... Tweet....
	The chirping sounds of the birds wake you up from nightmare. It was loud as if they were talking next to your ears. Your eyelids move up slowly bit by bit. The light comes through the window as your memories flashback.. "Princess Peach.. "
		
	As you gain conciousness, you pull yourself up from the bed heading directly down to the living room. You look around as if you are looking for someone, sundenly, you could hear the hoofbeats of a turtle galloping farrer and farrer away.. You run out to the front of the house and stop at the entrance of your garden. The horse galloped away leaving dust behind. You then move your attention to the mailbox.. You open it and there is an envelope stamped the sign from the palace. You take a look inside. The letter saying to Mario is in there.

		What would you do next?

MY_HEREDOC

	end #end of def intro
	
	
	
	
#---------------------------------------- PLAY FUNCTION ------------------------------------------#
	def play
		
		puts intro #welcome HereDoc
		section_completed = false
		
		while section_completed == false do
			prompt
			action = gets.chomp.downcase #action from users
			
			if action.include? "read"
				section_completed = true
				puts "\n********************************************\nDear Mario, We need your help. Please help us find our beloved princess.\nWe will be waiting for you at the throne room. Please.. \n sincerely, \n Mushroom King and Queen."

			elsif action.include? "throw" or action.include? "trash"
				puts "You throw the letter away."
				dead("The king was dissapointed and angry. \nSo he commanded his toad soldiers to put you on execution.")
			
			elsif action.include? "burn"
				puts "You burn it right away.. while thinking \"Who am i to have to save your daughter???\""
				dead("The king didn't hear from you so he sent the soldier to your home and found out you burnt the letter. \nThe king angrily commanded his soldiers to put you on execution.")
			
			elsif action.include? "run"
				puts "You pack your stuffs and run away immediately."
				dead("The king's soliders caught you on the way. #{@run_away}")
				
			elsif action == ""
				no_action
			else
				wrong_input
			end #end if	
				
		end # end while
		
		throne = Throne_room.new
		throne.play
	
	end # end of play function

end # end of class Begin