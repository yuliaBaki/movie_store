module MovieInfosHelper

    def total_gross(movie)
        if movie.free? 
            "Free"
        else
            number_to_currency(movie.total_gross, precision:0)
        end
    end
end
