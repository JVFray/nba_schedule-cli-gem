class NbaSchedule::Schedule 
	attr_accessor :name,  :time, :date, :location , :team_1 , :team_2

	@@games =[]


	def self.today
		#returns all the games scheduled. 
		game_1 = self.new
		game_1.team_1 = "team1"
		game_1.team_2 = "team2"
		game_1.time = "time"
		game_1.date = "date"
		game_1.location = "location"
		@@games << game_1
		@@games.each {|game| 
			puts "#{game.team_1}" " vs " "#{game.team_2}" " Date: " "#{game.date}" " Time: " "#{game.time}" " Location: " "#{game.location}"  }

		[game_1]
	end

	def self.games
		@@games
	end





end