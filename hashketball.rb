def game_hash
  new_hash = {
    :home => {
      :team_name => 'Brooklyn Nets', 
      :colors => ['Black', 'White'], 
      :players => [{
        :player_name =>'Alan Anderson',
        :number  => 0,
        :shoe  => 16,
        :points  => 22,
        :rebounds  => 12,
        :assists  => 12,
        :steals  => 3,
        :blocks  => 1,
        :slam_dunks  => 1},
        
        {:player_name =>'Reggie Evans',
        :number  => 30,
        :shoe  => 14,
        :points  => 12,
        :rebounds  => 12,
        :assists  => 12,
        :steals  => 12,
        :blocks  => 12,
        :slam_dunks  => 7},
        
        {:player_name =>'Brook Lopez',
        :number  => 11,
        :shoe  => 17,
        :points  => 17,
        :rebounds  => 19,
        :assists  => 10,
        :steals  => 3,
        :blocks  => 1,
        :slam_dunks  => 15},
        
        {:player_name =>'Mason Plumlee',
        :number  => 1,
        :shoe  => 19,
        :points  => 26,
        :rebounds  => 11,
        :assists  => 6,
        :steals  => 3,
        :blocks  => 8,
        :slam_dunks  => 5},
        
        {:player_name =>'Jason Terry',
        :number  => 31,
        :shoe  => 15,
        :points  => 19,
        :rebounds  => 2,
        :assists  => 2,
        :steals  => 4,
        :blocks  => 11,
        :slam_dunks  => 1}]
    },
    :away => {
      :team_name => 'Charlotte Hornets', 
      :colors => ['Turquoise', 'Purple'], 
      :players => [
        
        {:player_name =>'Jeff Adrien',
        :number  => 4,
        :shoe  => 18,
        :points  => 10,
        :rebounds  => 1,
        :assists  => 1,
        :steals  => 2,
        :blocks  => 7,
        :slam_dunks  => 2},
        
        {:player_name =>'Bismack Biyombo',
        :number  => 0,
        :shoe  => 16,
        :points  => 12,
        :rebounds  => 4,
        :assists  => 7,
        :steals  => 22,
        :blocks  => 15,
        :slam_dunks  => 10},
        
        {:player_name =>'DeSagna Diop',
        :number  => 2,
        :shoe  => 14,
        :points  => 24,
        :rebounds  => 12,
        :assists  => 12,
        :steals  => 4,
        :blocks  => 5,
        :slam_dunks  => 5},
        
        {:player_name =>'Ben Gordon',
        :number  => 8,
        :shoe  => 15,
        :points  => 33,
        :rebounds  => 3,
        :assists  => 2,
        :steals  => 1,
        :blocks  => 1,
        :slam_dunks  => 0},
        
        {:player_name =>'Kemba Walker',
        :number  => 33,
        :shoe  => 15,
        :points  => 6,
        :rebounds  => 12,
        :assists  => 12,
        :steals  => 7,
        :blocks  => 5,
        :slam_dunks  => 12}
        ]
    }
  }
end

def num_points_scored (player_name)
  hash = game_hash
  hash.each_key do |key|
    i = 0 
    while i < hash[key][:players].length do
      if hash[key][:players][i][:player_name] == player_name
        return hash[key][:players][i][:points]
      end
      i += 1
    end
  end
end

def shoe_size (player_name)
  hash = game_hash
  hash.each_key do |key|
    i = 0 
    while i < hash[key][:players].length do
      if hash[key][:players][i][:player_name] == player_name
        return hash[key][:players][i][:shoe]
      end
      i += 1
    end
  end
end

def team_colors(team_name)
  hash = game_hash
  hash.each_key do |key|
    if hash[key][:team_name] == team_name
      return hash[key][:colors]
    end
  end
end

def team_names
 game_hash.map do |place, team|
   team[:team_name]
 end
end  

def player_numbers(team_name)
  array_num = []
  game_hash.map do |place, team|
    if team[:team_name] == team_name
      i = 0 
      while i < team[:players].length do
        array_num.unshift(team[:players][i][:number])
        i += 1 
      end
    end
  end
  return array_num
end

def player_stats(player)
  game_hash.map do |place, team|
    i = 0
    while i < team[:players].length do
      if team[:players][i][:player_name] == player
        team[:players][i].delete :player_name
        puts team[:players][i]
        return team[:players][i]
      end
      i += 1 
    end
  end
end

def big_shoe_rebounds
  shoe_size = 0
  rebound = 0
  game_hash.map do |place, team|
    i = 0
    while i < team[:players].length do
      if team[:players][i][:shoe] > shoe_size
        shoe_size = team[:players][i][:shoe]
        rebound = team[:players][i][:rebounds]
      end
      i += 1
    end
  end
  return rebound
end

def most_points_scored
  points = 0
  name = 0
  game_hash.map do |place, team|
    i = 0
    while i < team[:players].length do
      if team[:players][i][:points] > points
        points = team[:players][i][:points]
        name = team[:players][i][:player_name]
      end
      i += 1
    end
  end
  return name
end

def winning_team
  home_points = 0
  away_points = 0
  i = 0
  while i < game_hash[:home][:players].length do
    home_points += game_hash[:home][:players][i][:points]
    i += 1
  end
  i = 0
  while i < game_hash[:away][:players].length do
    away_points += game_hash[:away][:players][i][:points]
    i += 1
  end
  if home_points > away_points 
    return game_hash[:home][:team_name]
  else
    return game_hash[:away][:team_name]
  end
end

def player_with_longest_name
  length_name = 0
  name = 0
  game_hash.map do |place, team|
    i = 0
    while i < team[:players].length do
      if team[:players][i][:player_name].length > length_name
        length_name = team[:players][i][:player_name].length
        name = team[:players][i][:player_name]
      end
      i += 1
    end
  end
  return name
end

def steals
  steals = 0
  name = 0
  game_hash.map do |place, team|
    i = 0
    while i < team[:players].length do
      if team[:players][i][:steals] > steals
        steals = team[:players][i][:steals]
        name = team[:players][i][:player_name]
      end
      i += 1
    end
  end
  return name
end

def long_name_steals_a_ton?
  longest_name = player_with_longest_name
  steals_name = steals
  game_hash.map do |place, team|
    i = 0
    while i < team[:players].length do
      if team[:players][i][:player_name] == longest_name && team[:players][i][:player_name] == steals_name
        return true 
      end
      i += 1
    end
  end
  return false 
end
    









