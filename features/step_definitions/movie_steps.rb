# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |title, director|
	assert Movie.where(title: title).first.director == director
	#assert page.body =~ /#{e1}.+Director.+#{e2}/m, "error"
end