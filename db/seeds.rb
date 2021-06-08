i = 1
3.times do
  10.times do
    categories = %w[king-size single double water hammock air bunk round car]
    category = categories.sample
    bed = Bed.new(title: 'Bed', category: category, description:'Coolest bed in the world', location: 'hojljalsdjf', price: 10)
    bed.user = User.find(i)
    bed.save
  end
  i += 1
end
