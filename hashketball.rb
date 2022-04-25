# Write your code below game_hash
require 'pry'


def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
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
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
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
end

#binding.pry

#Helper method
def all_teams
  puts game_hash[:home][:team_name]
  puts game_hash[:away][:team_name]
end

def home_team
  game_hash[:home]
end

def away_team
  game_hash[:away]
end

#Return players points scored
def num_points_scored(name)
  score = 0

  away_team[:players].each do |player|
    if player[:player_name] == name
      score = player[:points]
    end
  end

  home_team[:players].each do |player|
    if player[:player_name] == name
      score = player[:points]
    end
  end
  score
end

#Returns player shoe size
def shoe_size(name)
  size = 0

  away_team[:players].each do |player|
    if player[:player_name] == name
      size = player[:shoe]
    end
  end

  home_team[:players].each do |player|
    if player[:player_name] == name
      size = player[:shoe]
    end
  end
  size
end

def team_colors(team)
  colors = ""
  if away_team[:team_name] == team
    colors = away_team[:colors]
  elsif home_team[:team_name] == team
    colors = home_team[:colors]
  end
  colors
end

#Returns team names
def team_names
    teams = []

    teams << away_team[:team_name]
    teams << home_team[:team_name]

    teams
end

#Returns the players jersey numbers
def player_numbers(team)
  numbers = []

  if away_team[:team_name] == team
    away_team[:players].each do |player|
      numbers << player[:number]
    end

  elsif home_team[:team_name] == team
    home_team[:players].each do |player|
      numbers << player[:number]
    end
  end
  numbers
end

#Returns player stats
def player_stats(name)
  stats = ""
  away_team[:players].each do |player|
    if player[:player_name] == name
      stats = player
    end
  end

  home_team[:players].each do |player|
    if player[:player_name] == name
      stats = player
    end
  end
  stats
end

#Returns number of rebounds of player with biggest shoe size
def big_shoe_rebounds
  shoe_size = 0
  rebounds = 0

  away_team[:players].each do |player|
    if player[:shoe] > shoe_size
      shoe_size = player[:shoe]
      rebounds = player[:rebounds]
    end
  end

  home_team[:players].each do |player|
    if player[:shoe] > shoe_size
      shoe_size = player[:shoe]
      rebounds = player[:rebounds]
    end
  end

  rebounds

end