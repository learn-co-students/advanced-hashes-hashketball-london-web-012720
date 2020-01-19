require "pry"

def game_hash
hash_return =   {
  home:{
    team_name: "Brooklyn Nets",
    colors: ["Black", "White"],
    players: [{
      player_name:"Alan Anderson",
number: 0,
shoe: 16,
points: 22,
rebounds:12,
assists: 12,
steals: 3,
blocks: 1,
slam_dunks: 1
      },{
        player_name:"Reggie Evans",
  number: 30,
  shoe: 14,
  points:12,
  rebounds: 12,
  assists: 12,
  steals: 12,
  blocks: 12,
  slam_dunks:7
      },{
        player_name:"Brook Lopez",
  number: 11,
  shoe: 17,
  points: 17,
  rebounds: 19,
  assists: 10,
  steals: 3,
  blocks: 1,
  slam_dunks:15
}, {
  player_name:"Mason Plumlee",
number: 1,
shoe: 19,
points: 26,
rebounds: 11,
assists: 6,
steals: 3,
blocks: 8,
slam_dunks: 5
}, {
  player_name:"Jason Terry",
number: 31,
shoe: 15,
points: 19,
rebounds: 2,
assists: 2,
steals: 4,
blocks: 11,
slam_dunks: 1
}
    ]
  },
  away:{

      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
        player_name:"Jeff Adrien",
  number: 4,
  shoe: 18,
  points: 10,
  rebounds: 1,
  assists: 1,
  steals: 2,
  blocks: 7,
  slam_dunks: 2
        },{
          player_name:"Bismack Biyombo",
    number: 0,
    shoe: 16,
    points: 12,
    rebounds: 4,
    assists: 7,
    steals: 22,
    blocks: 15,
    slam_dunks: 10
        },{
          player_name:"DeSagna Diop",
    number: 2,
    shoe: 14,
    points: 24,
    rebounds: 12,
    assists: 12,
    steals: 4,
    blocks: 5,
    slam_dunks: 5
  }, {
    player_name:"Ben Gordon",
number: 8,
shoe: 15,
points: 33,
rebounds: 3,
assists: 2,
steals: 1,
blocks: 1,
slam_dunks: 0
}, {
  player_name:"Kemba Walker",
number: 33,
shoe: 15,
points: 6,
rebounds: 12,
assists: 12,
steals: 7,
blocks: 5,
slam_dunks: 12
}
      ]
  }

}

hash_return
end
#
 def num_points_scored(name)
 players_home = game_hash

 players_home.each do |keys1, data1|
  data1.each do |key2, data2|
if key2 === :players
  data2.each do |players|
if players[:player_name] === name
  return players[:points]
            end
          end
        end
      end
    end
 end


def shoe_size(name)

game_hash.each do |key1, data1|
  data1.each do |player_name, data_team|
    if player_name === :players

      data_team.each do |players_info|
      if players_info[:player_name] === name
      return  players_info[:shoe]

      end
      end
    end
  end
end
end

def team_colors(name_of_team)
  game_hash.each do |keys1, data1|
  if data1[:team_name] === name_of_team
     return data1[:colors]
     end
   end
end

def team_names
new_array = []
game_hash.each do |place, data1|
  new_array << data1[:team_name]

end

new_array
end

def player_numbers(team_name)
  new_array = []
  game_hash.each do |place, data1|
if data1[:team_name] === team_name
data1[:players].map {|info_team| new_array << info_team[:number] }

  end
end
new_array
end

player_numbers("Brooklyn Nets")

def player_stats(players_name)
new_hash = {}
game_hash.each do |main_keys, info_team|
 info_team[:players].each do |info_players|

   if info_players[:player_name] === players_name
     info_players.each do |keys, info|
       if keys != :player_name
         new_hash[keys] = info

       end
     end
   end
 end
end
new_hash
end


def big_shoe_rebounds
  biggest_shoe = 0
    num_rebounds = 0

    game_hash.each do |team, game_data|
 game_data[:players].each do |info_player|
 if info_player[:shoe] > biggest_shoe
   biggest_shoe = info_player[:shoe]
   num_rebounds = info_player[:rebounds]
 end
end

end
biggest_shoe
num_rebounds
end

def most_points_scored

  points = 0
  players_name = ""

  game_hash.each do |teams, game_data|
    game_data[:players].each do |teams_info|
      if teams_info[:points] > points
      points = teams_info[:points]
  players_name = teams_info[:player_name]
      end
    end
end
players_name
end



def winning_team
points = 0
team_nam = ""

game_hash.each do |place, teams_info|
  teams_info[:players].each do |players_info|
    if players_info[:points] > points
      points += players_info[:points]
       team_nam = teams_info[:team_name]


        end
    end
  end
  return team_nam
end


  def player_with_longest_name

  length_name = 0
  name_players = ""

  game_hash.each do |place, teams_info|
 teams_info[:players].each do |players_info|

   if players_info[:player_name].length > length_name
     length_name = players_info[:player_name].length
     name_players =  players_info[:player_name]
end
 end

  end
return name_players
end


def long_name_steals_a_ton?
steals = 0
length_name = 0
longest_name = ""
steals_of_players = 0
game_hash.each do |place, teams_info|
  teams_info[:players].each do |players_info|
if players_info[:steals] > steals
  steals = players_info[:steals]
  if players_info[:player_name].length > length_name
    length_name = players_info[:player_name].length
    longest_name = players_info[:player_name]
      steals_of_players = players_info[:steals]
            end
          end
          if steals === steals_of_players
            return true
          else
            return false
          end
          end
        end
      end
