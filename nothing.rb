PointsReceived = Struct.new(:name, :points)

module PointCollection

	PointCollection::POINTS_RECIEVED = [
		PointsReceived.new(:kim, 0),
		PointsReceived.new(:kanye, 0),
	]
end



#in players

def player_total_score(points_recieved)
	@player_total_score[points_recieved.name] += points_recieved.points
	puts "This flip led to #{points_recieved.points} for #{points_recieved.name}."
	puts "#{@player}'s points: #{@player_score}"
end


puts player_total_score()



# @player_scores = { :running_score => 0 }

# @player_scores.each do |key, value|
# 	puts "#{key} has #{value} points."
# end






# def next_player

# 	player1 = "Kim"
# 	player2 = "Kanye"
# 	players = [player1, player2]
 		
# 	players.each do |player|
# 		active_player = player
# 		puts active_player
# 		play
# 	end
# end

# #next_player


# # set up
# global_players = ["Kim", "Kanye", "North", "Daniel"]
# global_current_player_index = 0

# def zk_current_player(players, current_player_index)
# 	players[current_player_index % players.length]
# end

# puts zk_current_player(global_players, global_current_player_index)

# global_current_player_index += 1
# puts zk_current_player(global_players, global_current_player_index)

# global_current_player_index += 1
# puts zk_current_player(global_players, global_current_player_index)

# global_current_player_index += 1
# puts zk_current_player(global_players, global_current_player_index)

# global_current_player_index += 1
# puts zk_current_player(global_players, global_current_player_index)

# global_current_player_index += 1
# puts zk_current_player(global_players, global_current_player_index)

# puts
# puts

# @zk_players = ["Kim", "Kanye", "North"]
# @zk_current_player_index = 0

# def zk_next_player
# 	@zk_current_player_index += 1
# 	@zk_players[@zk_current_player_index % @zk_players.length]
# end	

# def zk_current_player
# 	@zk_players[@zk_current_player_index % @zk_players.length]
# end	

# puts current_player_index

# puts zk_next_player
# puts zk_current_player

# puts zk_next_player
# puts zk_current_player


