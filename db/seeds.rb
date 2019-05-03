puts "Destroying all records of products..."

Product.destroy_all

puts "Fetching pictures..."

pic_one = "https://images.unsplash.com/photo-1453738773917-9c3eff1db985?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
pic_two = "https://images.unsplash.com/photo-1500565534308-0db60f7116f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
pic_three = "https://images.unsplash.com/photo-1529119368496-2dfda6ec2804?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
pic_four = "https://images.unsplash.com/photo-1534287111100-d32d2c2b9f0b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
pic_five = "https://images.unsplash.com/photo-1547139522-84202c4e99ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
pic_six = "https://images.unsplash.com/photo-1517607908060-9a66da662869?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80"
pic_seven = "https://images.unsplash.com/photo-1516321497487-e288fb19713f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"

puts "Creating records of products..."

communication_one = Product.create!(name: "Presenting with impact", group: "Communication", description: "You wish to be comfortable and confident when you are at the front of the room performing in front of others. Obtaining buy-in and having impact are key for you.")
communication_two = Product.create!(name: "Giving feedback", group: "Communication", description: "You wish to feel comfortable while giving feedback and want your message to come across whilst showing respect for the other. You want to inspire people and get buy-in even on the most difficult topics. You also want to be open to receiving feedback.")
communication_three = Product.create!(name: "Communication for experts", group: "Communication", description: "As an expert in your field, you sometimes get lost when you need to communicate. You want to communicate in a clear and concise way, have an impact and feel confident whatever the circumstances.")
communication_four = Product.create!(name: "Influencing and convincing", group: "Communication", description: "You wish to speak up more in meetings, feel more comfortable expressing what you think, listen better and interact better with the people around you.")
communication_five = Product.create!(name: "Listening to understand", group: "Communication", description: "You wish to become more powerful in your communication by listening without judging or interfering with what is being said. You want to understand what motivates the speaker and make him feel heard.")
communication_six = Product.create!(name: "Assertiveness", group: "Communication", description: "You want to have the confidence  to speak when you have something to say and to transmit your ideas decisively. You want to be able to clearly indicate your boundaries without infringing those of others.")
communication_seven = Product.create!(name: "Delegating", group: "Communication", description: "You wish to delegate in a way which makes people feel trusted and that you are helping them grow, while at the same time being efficient and ensuring transparency so that objectives are met.")

puts "relating pictures to products..."

communication_one.remote_photo_url = pic_one
communication_one.save
communication_two.remote_photo_url = pic_two
communication_two.save
communication_three.remote_photo_url = pic_three
communication_three.save
communication_four.remote_photo_url = pic_four
communication_four.save
communication_five.remote_photo_url = pic_five
communication_five.save
communication_six.remote_photo_url = pic_six
communication_six.save
communication_seven.remote_photo_url = pic_seven
communication_seven.save
