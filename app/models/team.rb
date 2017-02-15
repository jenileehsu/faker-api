class Team < ApplicationRecord
  
  def team_name
    "#{state} #{creature}"
  end

end
