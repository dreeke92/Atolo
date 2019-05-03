puts "Destroying all records of products"

Product.destroy_all

puts "Creating records of products"

communication_one = Product.create!(name: "Presenting with impact", group: "Communication", description: "You wish to be comfortable and confident when you are at the front of the room performing in front of others. Obtaining buy-in and having impact are key for you.")
communication_two = Product.create!(name: "Giving feedback", group: "Communication", description: "You wish to feel comfortable while giving feedback and want your message to come across whilst showing respect for the other. You want to inspire people and get buy-in even on the most difficult topics.
You also want to be open to receiving feedback
.")
communication_three = Product.create!(name: "Communication for experts", group: "Communication", description: "As an expert in your field, you sometimes get lost when you need to communicate. You want to communicate in a clear and concise way, have an impact and feel confident whatever the circumstances.")
communication_four = Product.create!(name: "Influencing and convincing", group: "Communication", description: "You wish to speak up more in meetings, feel more comfortable expressing what you think, listen better and interact better with the people around you.")
communication_five = Product.create!(name: "Listening to understand", group: "Communication", description: "You wish to become more powerful in your communication by listening without judging or interfering with what is being said. You want to understand what motivates the speaker and make him feel heard.You wish to become more powerful in your communication by listening without judging or interfering with what is being said. You want to understand what motivates the speaker and make him feel heard.")
communication_six = Product.create!(name: "Assertiveness", group: "Communication", description: "You want to have the confidence  to speak when you have something to say and to transmit your ideas decisively. You want to be able to clearly indicate your boundaries without infringing those of others.")
communication_seven = Product.create!(name: "Delegating", group: "Communication", description: "You wish to delegate in a way which makes people feel trusted and that you are helping them grow, while at the same time being efficient and ensuring transparency so that objectives are met.You wish to delegate in a way which makes people feel trusted and that you are helping them grow, while at the same time being efficient and ensuring transparency so that objectives are met.You wish to delegate in a way which makes people feel trusted and that you are helping them grow, while at the same time being efficient and ensuring transparency so that objectives are met.You wish to delegate in a way which makes people feel trusted and that you are helping them grow, while at the same time being efficient and ensuring transparency so that objectives are met.You wish to delegate in a way which makes people feel trusted and that you are helping them grow, while at the same time being efficient and ensuring transparency so that objectives are met.")

