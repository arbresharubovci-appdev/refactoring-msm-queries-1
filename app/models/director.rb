# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    my_id = self.id
    matching_movies = Movie.where({ :director_id => self.id })
    return matching_movies
  end

  # three 1=N associations:
  # - Director => Movie
  # - Movie => Character
  # - Actor => Character

  # try define:
  # - Director#filmography
  # - Movie#director
  # - Movie#characters
  # - Character#movie
  # - Actor#Cgaracters
  # - Character#actor

end
