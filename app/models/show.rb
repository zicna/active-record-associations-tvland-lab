class Show < ActiveRecord::Base
  has_many :actors, through: :characters
  has_many :characters
  belongs_to :network

  def actors_list
    self.characters.map do |char|
        #binding.pry
        "#{char.actor.first_name} #{char.actor.last_name}"
    end
  end

end