class MovieInfo < ApplicationRecord

  validates :title, :released_on, :duration,  presence: true
  validates :description, length: { minimum:25 }
  validates :total_gross, numericality: { greater_than_or_equal_to: 0 }
  #validates :capacity, numericality: { only_integer: true, greater_than: 0 }
  validates :image_file_name, format: {
    with: /\w+\.(jpg|png)\z/i,
    message: "Must be a JPG or PNG image"
   }

  RATINGS = %w(G PG PG-13 R NC-17)
  validates :rating, inclusion: { in: RATINGS}
  def self.released
    #self is there to replace MovieInfo
    where("released_on < ?", Time.now).order("released_on desc")
  end

  def flop?
      total_gross.blank? || total_gross == 0
    end
end
