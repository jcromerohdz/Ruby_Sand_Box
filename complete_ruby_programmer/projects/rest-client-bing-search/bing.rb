require "rest-client"

class Bing
	URL = "https://www.bing.com/search?q="

	def convert(query)
		query.split(" ").join("+")
	end

	def print_links(response)
        links = response.body.split('<h2><a href="').drop(1)
		links.map! { |link| link.split('" ')[0] }
		puts links
	end

	def user_input
		puts "\nWhat do you want to search for? Enter [q] to quit."
		response = gets.chomp
	end

	def search
		while true
			query = user_input
			break if query == 'q'
			response = RestClient.get(URL + convert(query))
			print_links(response)
		end
	end
end

s = Bing.new
s.search
