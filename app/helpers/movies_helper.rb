module MoviesHelper
  def total_gross(movie)
    if movie.flop?
      "Flop!"
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end

  def year_of(movie)
    movie.released_on.strftime("%Y")
    # ".year" can be used here as well.
  end

  def average_stars(movie)
    if movie.average_stars.zero?
      content_tag(:strong, "No Reviews")
    else
      "*" * movie.average_stars.round
      # pluralize(number_with_precision(movie.average_stars, precision: 1), "star")
    end
  end
end
