class MovieInfo < ApplicationRecord
    def flop?
        total_gross.blank? || total_gross == 0
      end
end
