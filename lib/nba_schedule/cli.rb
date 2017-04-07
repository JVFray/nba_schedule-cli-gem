#cli controller

class NbaSchedule::CLI

	
	def call
		request
	end

	def todays_games
		@games = NbaSchedule::Schedule.today
	end

	def individual_games
		puts <<-DOC.gsub /^\s*/,''
			1. game 
			
		DOC
	end

	def request
		#teams = ["hawks","celtics","nets","hornets","bulls" ,
		#	"cavaliers","mavericks", "denver nuggets","detroit pistons",
		#	"warriors","rockets","pacers","clippers","lakers","grizzlies","heat" ,"bucks", 
		#	"timberwolves","pelicans","knicks","thunder","magic","sixers", 
		#	"suns", "trail blazers","kings","spurs"," raptors","jazz","wizards"]

			puts "Enter '1' for todays full NBA Schedule, '2' to type in a team name for their schedule or exit to leave the Schedule:"
			input = gets.strip.downcase

			if input.to_s == "1"
				todays_games
			elsif input.to_s == "2"
				individual_games
			elsif input == "exit"
				goodbye
				exit 
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



