target_word = gets.chomp.to_s
number_of_mails = gets.chomp.to_i
mail_titles = []
result = []
number_of_mails.times do
  mail_titles << gets.chomp.split
end

mail_titles.each do |title|
  title.index(target_word) != nil ? result << "Yes" : result << "No"
end

puts result
