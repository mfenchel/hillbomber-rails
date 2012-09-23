class Trail < ActiveRecord::Base
  attr_accessible :creator, :e_lat, :e_long, :s_lat, :s_long, :title, :difficulty


  validates :s_lat, presence: true
  validates :s_long, presence: true
  validates :e_lat, presence: true
  validates :e_long, presence: true
  validates :difficulty, presence: true

  def as_json(options = {}){

  	}
  end


end
