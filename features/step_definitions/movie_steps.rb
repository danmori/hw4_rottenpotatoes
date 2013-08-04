# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /the director of "(.*)" should be "(.*)"/ do |movie, director|
   assert page.body =~ /#{movie}.+Director.+#{director}/m
  #Movie.where(title: movie.to_s).first.title == director
end