module MovieInfosHelper
  def total_gross(movie)
    if movie.flop?
      "Free!"
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end

  def year_of(movie)
    movie.released_on.year
  end
end
