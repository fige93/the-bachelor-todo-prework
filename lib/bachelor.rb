require "pry"

def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |name, persons|
    if name == season
      persons.each do |data|
        if data["status"] == "Winner"
          winner = data["name"].split[0]
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  worker = ""
  data.each do |name, persons|
    persons.each do |data|
      if data["occupation"] == occupation
        worker = data["name"]
      end
    end
  end
  worker
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |name, persons|
    persons.each do |data|
      if data["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occupation = []
  data.each do |name, persons|
    persons.each do |data|
      if data["hometown"] == hometown
        occupation.push(data["occupation"])
      end
    end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  ages = []
  sum = 0
  data.each do |name, persons|
    if name == season
      persons.each do |data|
        ages.push(data["age"])
      end
    end
  end
  ages.map {|x| x.to_f}.each{|x| sum = sum + x}
  (sum / ages)
end
