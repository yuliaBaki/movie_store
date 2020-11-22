class MovieInfo < ApplicationRecord

  def self.released
    #self is there to replace MovieInfo
    where("released_on < ?", Time.now).order("released_on desc")
  end

  def flop?
      total_gross.blank? || total_gross == 0
    end
end
