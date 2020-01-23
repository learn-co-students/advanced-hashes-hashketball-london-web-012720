# Write your code here!


def game_hash 
match = {
    :home => {
        :team_name => "Brooklyn Nets",
        :colors => ['black', 'white'],
        :players => [
            {
                :player_name => 'Alan Anderson',
                :number => 0,
                :shoe => 16,
                :points => 22,
                :rebounds => 12,
                :assists => 12,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1
            },
            {
                :player_name => 'Reggie Evans',
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks => 7
            },
            {
                :player_name => 'Brook Lopez',
                :number => 11,
                :shoe => 17,
                :points => 17,
                :rebounds => 19,
                :assists => 10,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 15
            },
            {
                :player_name => 'Mason Plumlee',
                :number => 1,
                :shoe => 19,
                :points => 26,
                :rebounds => 11,
                :assists => 6,
                :steals => 3,
                :blocks => 8,
                :slam_dunks => 5
            },
            {
                :player_name => 'Jason Terry',
                :number => 31,
                :shoe => 15,
                :points => 19,
                :rebounds => 2,
                :assists => 2,
                :steals => 4,
                :blocks => 11,
                :slam_dunks => 1
            }
        ]
    },
    :away => {
        :team_name => "Charlotte Hornets",
        :colors => ['Turquoise', 'Purple'],
        :players => [
            {
                :player_name => 'Jeff Adrian',
                :number => 4,
                :shoe => 18,
                :points => 10,
                :rebounds => 1,
                :assists => 1,
                :steals => 2,
                :blocks => 7,
                :slam_dunks => 2
            },
            {
                :player_name => 'Bismack Biyombo',
                :number => 0,
                :shoe => 16,
                :points => 12,
                :rebounds => 4,
                :assists => 7,
                :steals => 22,
                :blocks => 15,
                :slam_dunks => 10
            },
            {
                :player_name => 'DeSagna Diop',
                :number => 2,
                :shoe => 14,
                :points => 24,
                :rebounds => 12,
                :assists => 12,
                :steals => 4,
                :blocks => 5,
                :slam_dunks => 5
            },
            {
                :player_name => 'Ben Gordon',
                :number => 8,
                :shoe => 15,
                :points => 33,
                :rebounds => 3,
                :assists => 2,
                :steals => 1,
                :blocks => 1,
                :slam_dunks => 0
            },
            {
                :player_name => 'Kemba Walker',
                :number => 33,
                :shoe => 15,
                :points => 6,
                :rebounds => 12,
                :assists => 12,
                :steals => 7,
                :blocks => 5,
                :slam_dunks => 12
            }
        ]
    }
}

match
end

def num_points_scored (player)

    match = game_hash

    count1 = 0
    while count1 < match.length
        count2 = 0
        while count1 < match[count1][:players].length
            if match[count1][:players][count2][:player_name] == player 
                return match[count1][:players][count2][:points]
            end
            count2++
        end
        count1++
    end
    err = 'Player not found.'
    err
end

def shoe_size(player)

    match = game_hash

    count1 = 0
    count2 = 0
    while count1 < match.length
        while count1 < match[count1][:players].length
            if match[count1][:players][count2][:player_name] == player 
                return match[count1][:players][count2][:shoe_size]
            end
            count2++
        end
        count1++
    end
    err = 'Player not found.'
    err
end

def team_colors(team)

    match = game_hash
    teams = []
    count = 0
    while count < match.length
        teams << match[count][:team_name]
        count++
    end
    teams
end

def player_numbers(team)

    match = game_hash
    numbers = []
    count1 = 0
    count2 = 0
    while count1 < match.length
        if match[count1][:team_name] == team
            while count2 < match[count1][:players].length
                numbers << match[count1][:players][count2][:number]
                count2++
            end
        end
        count1++
    end
    numbers
end

def player_stats(player)

    match = game_hash
    count1 = 0
    count2 = 0
    stats = {}

    while count1 < match.length
        while count2 < match[count1][:players].length 
            if player == match[count1][:players][count2][:player_name]
                stats = match[count1][:players][count2]
            end
            count2++
        end
        count1++
    end
    stats.except!(:player_name)
    stats
end







