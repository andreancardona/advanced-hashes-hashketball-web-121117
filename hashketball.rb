# Write your code here!
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
         "Alan Anderson" => {
           number: 0,
           shoe: 16,
           points: 22,
           rebounds: 12,
           assists: 12,
           steals: 3,
           blocks: 1,
           slam_dunks: 1
         },
         "Reggie Evans" => {
           number: 30,
           shoe: 14,
           points: 12,
           rebounds: 12,
           assists: 12,
           steals: 12,
           blocks: 12,
           slam_dunks: 7
         },
         "Brook Lopez" => {
           number: 11,
           shoe: 17,
           points: 17,
           rebounds: 19,
           assists: 10,
           steals: 3,
           blocks: 1,
           slam_dunks: 15
         },
         "Mason Plumlee" => {
           number: 1,
           shoe: 19,
           points: 26,
           rebounds: 12,
           assists: 6,
           steals: 3,
           blocks: 8,
           slam_dunks: 5
         },
         "Jason Terry" => {
           number: 31,
           shoe: 15,
           points: 19,
           rebounds: 2,
           assists: 2,
           steals: 4,
           blocks: 11,
           slam_dunks: 1
         }
     }
   },
   away: {
     team_name: "Charlotte Hornets",
     colors: ["Turquoise", "Purple"],
     players: {
       "Jeff Adrien" => {
         number: 4,
         shoe: 18,
         points: 10,
         rebounds: 1,
         assists: 1,
         steals: 2,
         blocks: 7,
         slam_dunks: 2
       },
       "Bismak Biyombo" => {
         number: 0,
         shoe: 16,
         points: 12,
         rebounds: 4,
         assists: 7,
         steals: 7,
         blocks: 15,
         slam_dunks: 10
       },
       "DeSagna Diop" => {
         number: 2,
         shoe: 14,
         points: 24,
         rebounds: 12,
         assists: 12,
         steals: 4,
         blocks: 5,
         slam_dunks: 5
       },
       "Ben Gordon" => {
         number: 8,
         shoe: 15,
         points: 33,
         rebounds: 3,
         assists: 2,
         steals: 1,
         blocks: 1,
         slam_dunks: 0
       },
       "Brendan Haywood" => {
         number: 33,
         shoe: 15,
         points: 6,
         rebounds: 12,
         assists: 12,
         steals: 22,
         blocks: 5,
         slam_dunks: 12
       }
     }
   }
 }
 end

def get_all_players #New array gets all the names of the players
  game_hash.values.map do | team_details |#iterate through top-level hash #iterate over to get the team_details value
    team_details[:players].keys #returns an array
  end.flatten

end

all_players = get_all_players()
puts all_players


 def num_points_scored(player_name)
    game_hash.each do |team_side, team_details|
      team_details[:players].each do | name_key, player_stats|
        if name_key == player_name
          return player_stats[:points]
        end
      end
    end
  end


  def shoe_size(player_name)
     game_hash.each do |team_side, team_details|
       team_details[:players].each do | name_key, player_stats|
         if name_key == player_name
           return player_stats[:shoe]
         end
       end
     end
   end

   def team_colors(name)
     game_hash.each do |team_side, team_details|
       if team_details[:team_name] == name
         return team_details[:colors]
      end
   end
 end

 def team_names #expects new array
    team_names_array = []
    game_hash.each do |team_side, team_details|
      team_names_array << team_details[:team_name]
    end
    return team_names_array
  end

def player_numbers(team) #accepts an argument and #expects an a new array of numbers
     team_side_array = []
     game_hash.each do |team_side, team_details|
      team_details[:players].each do | player_name_key, player_stats|
         if team_details[:team_name] == team
           team_side_array << player_stats[:number]
         end
       end
     end
     return team_side_array
   end

   def player_stats (name)
     game_hash.each do |team_side, team_details|
        team_details[:players].each do | player_name_key, player_stats|
              if player_name_key == name
                return player_stats
          end
        end
      end
    end

   def big_shoe_rebounds #does NOT accept an argument
    rebound_number = 0
    shoe_size = 0
    game_hash.each do |team_side, team_details|
    team_details[:players].each do | player_name_key, player_stats|
       if player_stats[:shoe] > shoe_size
         shoe_size = player_stats[:shoe]
         rebound_number = player_stats[:rebounds]
       end
     end
   end
   return rebound_number
end
