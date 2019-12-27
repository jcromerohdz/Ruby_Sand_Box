require 'httparty'
require 'nokogiri'
require 'pp'

def car_shoper
  
  response = HTTParty.get('https://code.evgenyrahman.com/rubycourse/carlist.html')
  parse_html = Nokogiri::HTML(response.body)

  car_listing = parse_html.css('.card.car')
  # pp car_listing.first

  
  cars = car_listing.map do |each_car|
    car = {
      make: each_car.css('.make').text,
      year: each_car.css('.year').text,
      price: each_car.css('.price').text,
      rating: each_car.css('.star.rating').attribute("data-rating").value
    }
  end

  File.open('car_listings.json', 'wb') do |f|
    f << cars.to_json
  end


  puts "Welcome to the car shopper!"

  # puts parse_html
end

car_shoper
