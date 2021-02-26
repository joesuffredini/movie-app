require "http"

p movie_response = HTTP.get("http://localhost:3000/api/movie?")
