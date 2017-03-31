#cli controller

class NbaSchedule::CLI

	
	def call
		request
	end

	def todays_games
		puts <<-DOC.gsub /^\s*/,''
			1. game 
			2. game 
			3. etc
		DOC
	end

	def individual_games
		puts <<-DOC.gsub /^\s*/,''
			1. game 
			
		DOC
	end

	def request
		teams = ["hawks","celtics","nets","hornets","bulls" ,
			"cavaliers","mavericks", "denver nuggets","detroit pistons",
			"warriors","rockets","pacers","clippers","lakers","grizzlies","heat" ,"bucks", 
			"timberwolves","pelicans","knicks","thunder","magic","sixers", 
			"suns", "trail blazers","kings","spurs"," raptors","jazz","wizards"]

			puts "Enter '1' for the full schedule or type in the team and/or city name:"
			input = gets.strip.downcase

			if input.to_s == "1"
				todays_games
			elsif input.to_s != "1"
				individual_games
			else
				puts "You chose the wrong number or a team that does not exist"
				puts "Try again"
				call
			end
	end
		 	 
			
	def goodbye
		puts "Thank You, enjoy your day!"
	end


end



