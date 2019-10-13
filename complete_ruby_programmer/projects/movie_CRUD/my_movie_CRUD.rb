movies = {
  avengers: 4
}

puts "Select a choice in the menu"
puts "add -- for adding a movie"
puts "delete -- for deleting a movie"
puts "update -- for updating a movie"
puts "display -- for displaying a movies"
choice =  gets.chomp

case choice
  when "add"
    puts "Enter a movie title"
    title = gets.chomp.to_sym
  	if movies[title].nil?
      puts "Enter a movie rate"
      rate = gets.chomp.to_i
      movies[title] = rate
      puts "Your movie was saved!"
    else
      puts "The movie already exists!"
    end
  
  when "update"
    puts "Enter the movie you want to update"
    title = gets.chomp.to_sym
    if movies[title].nil?
      puts "Movie title not found :("
    else
      puts "Enter the new rate for the movie"
      rate = gets.chomp.to_i
      movies[title]=rate
      puts "Movie rate updated!"
    end
  when "display"
    puts "Displaying movies..."
  	movies.each { |movie, rating| puts "#{movie}: #{rating}"}  	
  when "delete"
    puts "Enter the movie title you want to delete..."
  	title = gets.chomp.to_sym
  	if movies[title].nil?
      puts "Movie not found :("
    else
      puts "Are you sure you want to delete the movie yes/no"
      answer = gets.chomp
      if answer == 'yes'
      	movies.delete(title)
        puts "The movie was deleted!"
      else
        puts "The movie was not deleted!"
      end
      
    end
  else
end