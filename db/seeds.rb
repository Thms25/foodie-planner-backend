puts 'Destroying recipes'
Recipe.destroy_all


puts 'Creating recipes'


20.times do |i|
  Recipe.create(
    title: "Recipe #{i + 1}",
    description: 'This is a great recipe',
    rate: [8, 9, 10].sample.to_f,
    prep_time: [30, 45, 60].sample,
    servings: [2, 4, 6].sample,
    category: 'Best category'
  )
  puts "Recipe #{i + 1} done!"
end
