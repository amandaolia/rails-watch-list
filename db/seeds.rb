# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'
require 'json'

url = 'https://tmdb.lewagon.com/movie/top_rated'
movies = JSON.parse(URI.open(url).read)["results"]

movies.each do |movie|
  Movie.create!(
    title: movie["title"],
    overview: movie["overview"],
    poster_url: "https://image.tmdb.org/t/p/original#{movie['poster_path']}",
    rating: movie["vote_average"]
  )
end

Movie.create(title: "The Godfather", overview: "Don Vito Corleone, the head of the Corleone mafia family, deals with loyalty, power, and revenge as his family gets involved in dangerous business.", poster_url: "https://image.tmdb.org/t/p/original/8A8fG1OL5F9vWL1WaRz3sA2OeY0.jpg", rating: 9.2)
Movie.create(title: "Citizen Kane", overview: "The story of newspaper magnate Charles Foster Kane, who, after his death, leaves behind an enigmatic legacy and a mysterious word: 'Rosebud.'", poster_url: "https://image.tmdb.org/t/p/original/pIkj18unY7ytwpv9v4PkmBdNGZJ.jpg", rating: 8.3)
Movie.create(title: "Schindler's List", overview: "German industrialist Oskar Schindler saves over a thousand Jews during the Holocaust by using his position to protect the workers in his factory.", poster_url: "https://image.tmdb.org/t/p/original/hqMklPYlXl9jYgnL6ZtM3y9Q8Fu.jpg", rating: 9.0)
Movie.create(title: "Casablanca", overview: "During World War II, bar owner Rick helps a woman escape the Nazi regime while dealing with his past and a lost love.", poster_url: "https://image.tmdb.org/t/p/original/pa0VpGZyOa2joUJXY3Aopfd7I6N.jpg", rating: 8.5)
Movie.create(title: "2001: A Space Odyssey", overview: "A journey through space and time with a mission that uncovers enigmatic mysteries about humanity and a higher intelligence.", poster_url: "https://image.tmdb.org/t/p/original/pDhqX9AD0ByV9RLJ9VE9Ys7Fe1v.jpg", rating: 8.3)
Movie.create(title: "The Sound of Music", overview: "A young nun is sent to care for the children of a strict widower but brings joy and music to his life and home.", poster_url: "https://image.tmdb.org/t/p/original/9d5tmT91yAPp3ABHlZPdz1b0rxm.jpg", rating: 8.0)
Movie.create(title: "Pulp Fiction", overview: "The intertwined story of various figures from Los Angeles' criminal underworld, including an assassin and a boxer, whose lives intersect in unexpected ways.", poster_url: "https://image.tmdb.org/t/p/original/qV3tcqVJlC9FE3ZTL7y6coOHKh5.jpg", rating: 8.9)
Movie.create(title: "Forrest Gump", overview: "The extraordinary life of Forrest Gump, a man with limited intelligence but a pure heart, who becomes involved in improbable historical events and achievements.", poster_url: "https://image.tmdb.org/t/p/original/jg5ubowV6IkveI9yQYdHpazghbx.jpg", rating: 8.8)
Movie.create(title: "The Lord of the Rings: The Return of the King", overview: "Frodo Baggins and his friends face the final battle against Sauron's forces while the fate of the ring and the world is decided.", poster_url: "https://image.tmdb.org/t/p/original/xV55v1Rznvqno0cAbqLaQeq9Xpe.jpg", rating: 8.9)
Movie.create(title: "Fight Club", overview: "A disillusioned man forms a secret fight club that quickly becomes a revolutionary force against the consumerist values of society.", poster_url: "https://image.tmdb.org/t/p/original/ziJrtowib28UEuHV8oXjhfDdJlb.jpg", rating: 8.8)
Movie.create(title: "The Big Lebowski", overview: "Jeffrey 'The Dude' Lebowski gets involved in a kidnapping and money laundering scheme after being mistaken for a millionaire with the same name.", poster_url: "https://image.tmdb.org/t/p/original/3Nm5du4hNE9mHcOShGXMzIu04V8.jpg", rating: 8.1)
Movie.create(title: "The Lion King", overview: "Simba, a young lion, must face his destiny to become king while dealing with the loss of his father and his uncle Scar's betrayal.", poster_url: "https://image.tmdb.org/t/p/original/1bXNdgIN39XZah4bCwMQDfvJ9tT.jpg", rating: 8.5)
Movie.create(title: "The Silence of the Lambs", overview: "Young FBI agent Clarice Starling seeks the help of brilliant psychopath Hannibal Lecter to catch another serial killer.", poster_url: "https://image.tmdb.org/t/p/original/kpV1ZuwP7f2Xpq2xHe91A5dfezd.jpg", rating: 8.6)
Movie.create(title: "Inception", overview: "Dom Cobb, a thief who specializes in stealing secrets through dreams, is given a chance at redemption if he can successfully perform the impossible task of planting an idea in someone's mind.", poster_url: "https://image.tmdb.org/t/p/original/9rS1JmECZXK5tjp1djR4giXcSkw.jpg", rating: 8.8)
Movie.create(title: "The Shawshank Redemption", overview: "Andy Dufresne, wrongly convicted of murder, forms a friendship with Ellis 'Red' Redding as he fights for his freedom in a maximum-security prison.", poster_url: "https://image.tmdb.org/t/p/original/viNjimYgQ5EqAVT1cW3yF5tbgb3.jpg", rating: 9.3)
Movie.create(title: "Taxi Driver", overview: "Travis Bickle, a lonely and disturbed war veteran, descends into a spiral of violence as he tries to save a young prostitute.", poster_url: "https://image.tmdb.org/t/p/original/7nFCPW0jR7Jvd6UNzBRj1KK3dkw.jpg", rating: 8.3)
Movie.create(title: "Gladiator", overview: "Maximus, a betrayed Roman general, seeks revenge against Emperor Commodus, who killed his family and sentenced him to slavery.", poster_url: "https://image.tmdb.org/t/p/original/jYZhF8q7FwI2slFsfk08rCjX1g8.jpg", rating: 8.5)
Movie.create(title: "Star Wars: The Empire Strikes Back", overview: "Luke Skywalker faces a growing threat from the Empire, while his training with Yoda is interrupted by a dangerous confrontation with Darth Vader.", poster_url: "https://image.tmdb.org/t/p/original/epVSzRZjXJ7HqOMgoI7HgXH97Vd.jpg", rating: 8.7)
Movie.create(title: "The Pianist", overview: "Władysław Szpilman, a Jewish pianist, struggles for survival in Warsaw during World War II and the Holocaust.", poster_url: "https://media.themoviedb.org/t/p/w600_and_h900_bestv2/zgtCY3VshbIv3UfNkdvVEShGmlE.jpg", rating: 8.5)
Movie.create(title: "Avengers: Endgame", overview: "The remaining heroes of Earth unite to attempt to reverse the damage done by Thanos in the fight for the survival of the universe.", poster_url: "https://image.tmdb.org/t/p/original/y8UJldTx6f93dDAKp7fFGp6mp4h.jpg", rating: 8.4)
