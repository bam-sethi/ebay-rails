# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


c1 = Customer.create(name: 'Louis Armstrong', age: '16', nationality: 'French')
c2 = Customer.create(name: 'Emma Goldman', age: '105', nationality: 'Russian')
c3 = Customer.create(name: 'Beyonce', age: '92', nationality: 'Canadian')
c4 = Customer.create(name: 'Karl Marx', age: '14', nationality: 'German')
c5 = Customer.create(name: 'Carl Sagan', age: '55', nationality: 'Kenyan')
c6 = Customer.create(name: 'Malcolm X', age: '23', nationality: 'American')
c7 = Customer.create(name: 'Bell Hooks', age: '18', nationality: 'Antarctican')
c8 = Customer.create(name: 'Phoolan Devi', age: '35', nationality: 'Indian')
c9 = Customer.create(name: 'Angela Davies', age: '68', nationality: 'Alpha Centurian')
c10 = Customer.create(name: 'Boudica', age: '607', nationality: 'Martian')


p1 = Product.create(name: 'Remote Controller', description: 'Broken', price: 5, quantity: 3)
p2 = Product.create(name: 'Hammer and Sickle', description: 'Fully functioning made from titanium', price: 3, quantity: 103)
p3 = Product.create(name: 'Kryptonite', description: 'Meditation crystal for relaxation and healing', price: 50, quantity: 1)
p4 = Product.create(name: 'Petrol Bomb', description: 'In perferct working condition', price: 3, quantity: 400)
p5 = Product.create(name: 'NASA Engine', description: 'Spares or Repairs', price: 209, quantity: 1)
p6 = Product.create(name: 'Ancient Artifact', description: 'Bargain Hugely valuable and ancient', price: 52, quantity: 10)
p7 = Product.create(name: 'Broken Laser Pointer', description: 'For collectors', price: 14, quantity: 1)
p8 = Product.create(name: ' F/A-18 Hornet fighter jet', description: ' The owner of the plane had purchased it from a scrap yard and had offered to have the plane restored for a Buy It Now price of $9,000,000. The auction stated that the new owner could expect to pay roughly $40,000 a month for just 2 -3 hours of flight time due to the fuel consumption, up-keep, and other mandatory expenses.  After hearing of the auction, the FBI notified the seller that he could only sell the plane to an American citizen residing in the United States.  Furthermore, the plane could not leave U.S. airspace either.  The auction ended without a winning bidder.', price: 1000000, quantity: 1)
p9 = Product.create(name: 'Original Hollywood sign', description: 'Im too busy working on other projects and more importantly wanted to use the proceeds to finance a Hollywood project that I currently have in the works.

', price: 300000, quantity: 1)
p10 = Product.create(name: 'A cornflake shaped like illinois', description: 'Miraculous Corn Flake', price: 2000, quantity: 1)

p1.reviews.create(content: 'Atrocious, didnt work at all', rating: 0, recommend: false, customer: c2)
p2.reviews.create(content: 'I found this to be very useful', rating: 5, recommend: true, customer: c8)
p3.reviews.create(content: '“Today is the fourth day of ownership of my pen, and I have to say Im starting to treat it like an old friend. I would happily recommend this pen to anyone who is planning on writing on paper.”', rating: 5, recommend: true, customer: c5)
p4.reviews.create(content: 'This foil is absolutely ideal for lining the surface of my shuttle for re-entry into Earths atmosphere. Ive used it time and time again and it always stands up to scrutiny. Also, I wrap my sandwiches in it', rating: 4, recommend: true, customer: c10)
p5.reviews.create(content: 'Ive looked long and hard for an A5 canvas clock of Pam St Clement, with the clock hands strategically placed atop her upper lip, thus acting as a comedy moustache. Imagine my disappointment when I discover the clock hands were positioned awkwardly above her right nostril.', rating: 2, recommend: false, customer: c3)
p6.reviews.create(content: '“I bought this for my son; he said its rubbish and randomly throws it at my head... I can never see it coming.', rating: 1, recommend: false, customer: c6)
p7.reviews.create(content: 'Thanks to this revolutionary idea I can now purchase bananas free of fear. I would have given this great product 5 stars if there had been banana peeling instructions included.', rating: 5, recommend: true, customer: c9)
p8.reviews.create(content: 'does not come with pocket protector, or spare dignity ... If youre a whiny, blond, teenage farmer, this jacket is for you. However youll be forever banished to the friend zone by every girl you see, or worse, the brother zone. But youll always have Yavin!', rating: 3, recommend: false, customer: c7)
p9.reviews.create(content: 'What better way to teach the next generation how to behave in a police state then with a toy such as this? ... Think of all the fun the little folks can have waterboarding those who "hate our freedom."', rating: 2, recommend: true, customer: c1)
p10.reviews.create(content: 'shit', rating: 0, recommend: false, customer: c4)











