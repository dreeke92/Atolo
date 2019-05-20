puts "Destroying all records of products..."

Product.destroy_all

puts "Fetching pictures..."

communication_pic_one = "https://images.unsplash.com/photo-1453738773917-9c3eff1db985?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_two = "https://images.unsplash.com/photo-1500565534308-0db60f7116f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_three = "https://images.unsplash.com/photo-1529119368496-2dfda6ec2804?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_four = "https://images.unsplash.com/photo-1482356432770-3a99f07aba35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_five = "https://images.unsplash.com/photo-1547139522-84202c4e99ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_six = "https://images.unsplash.com/photo-1486324461499-e5473c429107?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_seven = "https://images.unsplash.com/photo-1516321497487-e288fb19713f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"

engagement_pic_one = "https://images.unsplash.com/photo-1534108728919-56412aa1e61a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
engagement_pic_two = "https://images.unsplash.com/photo-1533284133567-0da9844151ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80"
engagement_pic_three = "https://images.unsplash.com/photo-1521200379774-e541c236ea33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"

puts "Creating records of products..."

communication_one = Product.create!(name: "Presenting with impact", group: "Communication", description: "You wish to be comfortable and confident when you are at the front of the room performing in front of others. Obtaining buy-in and having impact are key for you.")
communication_two = Product.create!(name: "Giving feedback", group: "Communication", description: "You wish to feel comfortable while giving feedback and want your message to come across whilst showing respect for the other. You want to inspire people and get buy-in even on the most difficult topics. You also want to be open to receiving feedback.")
communication_three = Product.create!(name: "Communication for experts", group: "Communication", description: "As an expert in your field, you sometimes get lost when you need to communicate. You want to communicate in a clear and concise way, have an impact and feel confident whatever the circumstances.")
communication_four = Product.create!(name: "Influencing and convincing", group: "Communication", description: "You wish to speak up more in meetings, feel more comfortable expressing what you think, listen better and interact better with the people around you.")
communication_five = Product.create!(name: "Listening to understand", group: "Communication", description: "You wish to become more powerful in your communication by listening without judging or interfering with what is being said. You want to understand what motivates the speaker and make him feel heard.")
communication_six = Product.create!(name: "Assertiveness", group: "Communication", description: "You want to have the confidence  to speak when you have something to say and to transmit your ideas decisively. You want to be able to clearly indicate your boundaries without infringing those of others.")
communication_seven = Product.create!(name: "Delegating", group: "Communication", description: "You wish to delegate in a way which makes people feel trusted and that you are helping them grow, while at the same time being efficient and ensuring transparency so that objectives are met.")

engagement_one = Product.create!(name: "Activate Engagement", group: "Engagement", description: "We trigger the process of engagement and the connection to your organisation’s values. You now have the tools to continue the process and lead your people to action! A  four- hour workshop in which people identify what drives them, connect these drivers to the organisations values and identify how to contribute more to the common goal.")
engagement_two = Product.create!(name: "Accelerate Engagement", group: "Engagement", description: "We convert the process of engagement into concrete actions and changes in behaviour. You prefer to handle the process of embedding this as your organisation’s DNA yourselves or at a later time. People connect their individual drivers to the collective. Collaboratively, the team defines the collective values they will need to allow engagement to flourish and identify the tangible actions and behaviours required for this to happen. Actions and behaviours which are connected to the organisation’s values and which drive the success of its mission. During this one and a half day journey, we support the team in the first phase of the execution of the action plan.")
engagement_three = Product.create!(name: "Anchor Engagement", group: "Engagement", description: "We support your organisation during the process of embedding engagement as part of your DNA.")


puts "relating pictures to products..."

communication_one.remote_photo_url = communication_pic_one
communication_one.save
communication_two.remote_photo_url = communication_pic_two
communication_two.save
communication_three.remote_photo_url = communication_pic_three
communication_three.save
communication_four.remote_photo_url = communication_pic_four
communication_four.save
communication_five.remote_photo_url = communication_pic_five
communication_five.save
communication_six.remote_photo_url = communication_pic_six
communication_six.save
communication_seven.remote_photo_url = communication_pic_seven
communication_seven.save

engagement_one.remote_photo_url = engagement_pic_one
engagement_one.save
engagement_two.remote_photo_url = engagement_pic_two
engagement_two.save
engagement_three.remote_photo_url = engagement_pic_three
engagement_three.save
