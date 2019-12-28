filename = 'data/access-log-20190521-211058.log'
access_log_lines = File.open(filename, 'r') do |f|
  f.readlines
end

signup_log_lines = access_log_lines.select do |line|
  line.include?('/signup?email=')
end

puts signup_log_lines.length
