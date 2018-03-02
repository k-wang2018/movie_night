Movie.delete_all

movies = [
  {
    "runtime" => 134,
    "year" => 2013,
    "mpaa" => 'PG-13',
    "title" => 'Captain Phillips',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/AnMTMPTUzeWNbYxzp29WqYf1br1.jpg',
    "plot" => 'The true story of Captain Richard Phillips and the 2009 hijacking by Somali pirates of the U.S.-flagged MV Maersk Alabama, the first American cargo ship to be hijacked in two hundred years.'
  },
  {
    "runtime" => 127,
    "year" => 1993,
    "mpaa" => 'PG-13',
    "title" => 'Jurassic Park',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/c414cDeQ9b6qLPLeKmiJuLDUREJ.jpg',
    "plot" => "During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok."
  },
  {
    "runtime" => 127,
    "year" => 2009,
    "mpaa" => 'PG-13',
    "title" => 'Star Trek',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/6V0CY7pwdDOCDS2XqNWahmIlVYh.jpg',
    "plot" => "The brash James T. Kirk tries to live up to his father's legacy with Mr. Spock keeping him in check as a vengeful Romulan from the future creates black holes to destroy the Federation one planet at a time."
  },
  {
    "runtime" => 152,
    "year" => 2017,
    "mpaa" => 'PG-13',
    "title" => 'Star Wars: The Last Jedi',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/kOVEVeg59E0wsnXmF9nrh6OmWII.jpg',
    "plot" => 'Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares to do battle with the First Order.'
  },
  {
    "runtime" => 133,
    "year" => 2011,
    "mpaa" => 'PG-13',
    "title" => 'Moneyball',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/3oAa8mJJ97CH9AeGEY6vjAxqcvZ.jpg',
    "plot" => "Oakland A's general manager Billy Beane's successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players."
  },
  {
    "runtime" => 150,
    "year" => 2012,
    "mpaa" => 'PG-13',
    "title" => 'Lincoln',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/gkkiDu9srCCbCMxGKwNwKCxK7KF.jpg',
    "plot" => "As the Civil War continues to rage, America's president struggles with continuing carnage on the battlefield as he fights with many inside his own cabinet on the decision to emancipate the slaves."
  },
  {
    "runtime" => 96,
    "year" => 2016,
    "mpaa" => 'PG-13',
    "title" => 'Sully',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/h6O5OE3ueRVdCc7V7cwTiQocI7D.jpg',
    "plot" => "The story of Chesley Sullenberger, an American pilot who became a hero after landing his damaged plane on the Hudson River in order to save the flight's passengers and crew."
  },

  {
    "runtime" => 115,
    "year" => 1981,
    "mpaa" => 'PG',
    "title" => 'Raiders of the Lost Ark',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/44sKJOGP3fTm4QXBcIuqu0RkdP7.jpg',
    "plot" => 'Archaeologist and adventurer Indiana Jones is hired by the US government to find the Ark of the Covenant before the Nazis.'
  },
  {
    "runtime" => 136,
    "year" => 2015,
    "mpaa" => 'PG',
    "title" => 'Star Wars: The Force Awakens',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/weUSwMdQIa3NaXVzwUoIIcAi85d.jpg',
    "plot" => 'Three decades after the defeat of the Galactic Empire, a new threat arises. The First Order attempts to rule the galaxy and only a ragtag group of heroes can stop them, along with the help of the Resistance.'
  },
  {
    "runtime" => 140,
    "year" => 1995,
    "mpaa" => 'PG',
    "title" => 'Apollo 13',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/6JQ9z3V9x4vlU2GSZx2yNO0PvuX.jpg',
    "plot" => 'NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy.'
  },
  {
    "runtime" => 143,
    "year" => 2000,
    "mpaa" => 'PG-13',
    "title" => 'Cast Away',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/w515BrZvczKIxbHurG6HIiYYrba.jpg',
    "plot" => 'A FedEx executive must transform himself physically and emotionally to survive a crash landing on a deserted island.'
  },
  {
    "runtime" => 121,
    "year" => 2014,
    "mpaa" => 'PG-13',
    "title" => 'Guardians of the Galaxy',
    "poster_url" => 'https://image.tmdb.org/t/p/w370_and_h556_bestv2/y31QB9kn3XSudA15tV7UWQ9XLuW.jpg',
    "plot" => 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.'
  }
]


movies.each do |movie_data|
  m = Movie.new
  m.title = movie_data["title"]
  m.plot = movie_data["plot"]
  m.runtime = movie_data["runtime"]
  m.year = movie_data["year"]
  m.mpaa = movie_data["mpaa"]
  m.poster_url = movie_data["poster_url"]
  m.save
end

director_credits = {"Captain Phillips" => "Paul Greengrass",
"Jurassic Park" => "Steven Spielberg",
"Star Trek" => "J.J. Abrams",
"Star Wars: The Last Jedi" => "Rian Johnson",
"Moneyball" => "Bennett Miller",
"Lincoln" => "Steven Spielberg",
"Sully" => "Clint Eastwood",
"Raiders of the Lost Ark" => "Steven Spielberg",
"Star Wars: The Force Awakens" => "J.J. Abrams",
"Apollo 13" => "Ron Howard",
"Cast Away" => "Robert Zemeckis",
"Guardians of the Galaxy" => "James Gunn"}

director_credits.each do |movie_title, director_name|
  the_movie = Movie.find_by(title: movie_title)
  the_director = Director.find_by(name: director_name)

  if the_director == nil
    the_director = Director.new
    the_director.name = director_name
    the_director.save
  end

  the_movie.director_id = the_director.id
  the_movie.save
end
