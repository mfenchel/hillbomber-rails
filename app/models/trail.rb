class Trail < ActiveRecord::Base
  attr_accessible :id, :creator, :e_lat, :e_long, :s_lat, :s_long, :title, :difficulty

  belongs_to :user
  
  validates :s_lat, presence: true
  validates :s_long, presence: true
  validates :e_lat, presence: true
  validates :e_long, presence: true
  validates :difficulty, presence: true

  def as_json(options = {}){
      :title => self.title,
      :s_lat => self.s_lat,
      :s_long => self.s_long,
      :e_lat => self.e_lat,
      :e_long => self.e_long,
      :difficulty => self.difficulty,
      :creator => self.creator
  	}
  end


end
