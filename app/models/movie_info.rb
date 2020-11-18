class MovieInfo < ApplicationRecord

    def free?
        total_gross.blank? || total_gross.zero?
    end

end
