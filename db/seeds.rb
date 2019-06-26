puts "Destroying all records of products..."

Product.destroy_all

puts "Fetching pictures..."

communication_pic_one = "https://images.unsplash.com/photo-1559526323-cb2f2fe2591b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_two = "https://images.unsplash.com/photo-1453738773917-9c3eff1db985?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_three = "https://images.unsplash.com/photo-1500565534308-0db60f7116f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_four = "https://images.unsplash.com/photo-1520110120835-c96534a4c984?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2694&q=80"
communication_pic_five = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1560512462/communication18.jpg"
communication_pic_six = "https://images.unsplash.com/photo-1551547600-8d30c2559da8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_seven = "https://images.unsplash.com/photo-1516321497487-e288fb19713f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"

engagement_pic_one = "https://images.unsplash.com/photo-1457131760772-7017c6180f05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1336&q=80"
engagement_pic_two = "https://images.unsplash.com/photo-1533284133567-0da9844151ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80"
engagement_pic_three = "https://images.unsplash.com/photo-1521200379774-e541c236ea33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"

languages_pic_one = "https://images.unsplash.com/photo-1532102522784-9e4d4d9a533c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
languages_pic_two = "https://images.unsplash.com/photo-1455885661740-29cbf08a42fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
languages_pic_three = "https://images.unsplash.com/photo-1532619675605-1ede6c2ed2b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
languages_pic_four = "https://images.unsplash.com/photo-1517048676732-d65bc937f952?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
languages_pic_five = "https://images.unsplash.com/photo-1488257907837-523fe2051fc3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
languages_pic_six = "https://images.unsplash.com/photo-1434030216411-0b793f4b4173?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
languages_pic_seven = "https://images.unsplash.com/photo-1483739355414-f8e2eb7651f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
languages_pic_eight = "https://images.unsplash.com/photo-1534180888273-50e8cca7c1e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
languages_pic_nine = "https://images.unsplash.com/photo-1556740720-776b84291f8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80"


puts "Creating records of products..."

communication_one = Product.create!(name: "Listening to understand", ranking: 1, group: "Communication", description: "You wish to become more powerful in your communication by listening without judging or interfering with what is being said. You want to understand what motivates the speaker and make him feel heard. Individual and group solutions. Formats adapted to your needs.")
communication_two = Product.create!(name: "Presenting with Impact", ranking: 2, group: "Communication", description: "You wish to be comfortable and confident when you are performing in front of others. Obtaining buy-in and having impact are key for you. Individual and group solutions. Formats adapted to your needs.")
communication_three = Product.create!(name: "Giving feedback", ranking: 3, group: "Communication", description: "You wish to feel comfortable while giving feedback and want your message to come across whilst showing respect for the other. You want to inspire people and get buy-in even on the most difficult topics. You want to be open to receiving feedback. Individual and group solutions. Formats adapted to your needs.")
communication_four = Product.create!(name: "Communication for Experts", ranking: 4, group: "Communication", description: "As an expert in your field, you sometimes get lost when you need to communicate. Your message needs to be clear and concise and you wish to have an impact and feel confident. Individual and group solutions. Formats adapted to your needs.")
communication_five = Product.create!(name: "Delegating", ranking: 5, group: "Communication", description: "You wish to delegate in a way which makes people feel trusted and that you are helping them grow, while at the same time being efficient and ensuring transparency so that objectives are met. Individual and group solutions. Formats adapted to your needs.")
communication_six = Product.create!(name: "Assertiveness", ranking: 6, group: "Communication", description: "You want to have the confidence  to speak when you have something to say and to transmit your ideas decisively. You want to be able to clearly indicate your boundaries without infringing those of others. Individual and group solutions. Formats adapted to your needs.")
communication_seven = Product.create!(name: "Influencing & convincing", ranking: 7, group: "Communication", description: "You wish to speak up more in meetings, feel more comfortable expressing what you think, listen better and interact better with the people around you. Individual and group solutions. Formats adapted to your needs.")

engagement_one = Product.create!(name: "Activate Engagement", ranking: 1, group: "Engagement", description: "We trigger the process of engagement and the connection to your organisation’s values. You now have the tools to continue the process and lead your people to action! A  four- hour workshop in which people identify what drives them, connect these drivers to the organisations values and identify how to contribute more to the common goal.")
engagement_two = Product.create!(name: "Accelerate Engagement", ranking: 2, group: "Engagement", description: "We convert the process of engagement into concrete actions and changes in behaviour. You prefer to handle the process of embedding this as your organisation’s DNA yourselves or at a later time. People connect their individual drivers to the collective. Collaboratively, the team defines the collective values they will need to allow engagement to flourish and identify the tangible actions and behaviours required for this to happen. Actions and behaviours which are connected to the organisation’s values and which drive the success of its mission. During this one and a half day journey, we support the team in the first phase of the execution of the action plan.")
engagement_three = Product.create!(name: "Anchor Engagement", ranking: 3, group: "Engagement", description: "We support your organisation during the process of embedding engagement as part of your DNA.")

languages_one = Product.create!(name: "Work & learn", ranking: 1, group: "Languages", description: "A language training embedded in your business project.")
languages_two = Product.create!(name: "The Atolo Classic", ranking: 2, group: "Languages", description: "Individual or group language courses. Duration and rhythms adapted to your reality. Like all classics, a learning journey your participants will never forget.")
languages_three = Product.create!(name: "Collaborative learning", ranking: 3, group: "Languages", description: "A dynamic team experience combining scrum meetings, individual coaching, group trainings.")
languages_four = Product.create!(name: "Languages & communication skills: A perfect blend", ranking: 4, group: "Languages", description: "Learning a language all the while developing a soft skill. The ideal combination.")
languages_five = Product.create!(name: "On the field language training ", ranking: 5, group: "Languages", description: "Languages learnt on the field. Master your language skills in your real work environment.")
languages_six = Product.create!(name: "Writing skills", ranking: 6, group: "Languages", description: "A tailored program focused on your writing where needed (reports, meeting minutes, customer care, audits…).")
languages_seven = Product.create!(name: "Phone or Skype ", ranking: 7, group: "Languages", description: "For those whose main line of communication isn't face to face or who simply need flexibility.")
languages_eight = Product.create!(name: "Speak up and share", ranking: 8, group: "Languages", description: "Conversation tables, interesting business topics, everyone is welcome. No rules except sharing ideas and thoughts in a target language.")
languages_nine = Product.create!(name: "A credit full of languages", ranking: 9, group: "Languages", description: "A line of credit covering a number of hours of training for those who have hectic agendas. No limits, pure flexibility, training when you need it.")

puts "Adding different languages to product names..."

communication_one.update(name_fr: "Ecouter pour entendre", name_de: "", name_nl: "")
communication_two.update(name_fr: "Presenter pour Impact", name_de: "", name_nl: "")
communication_three.update(name_fr: "", name_de: "", name_nl: "")
communication_four.update(name_fr: "", name_de: "", name_nl: "")
communication_five.update(name_fr: "", name_de: "", name_nl: "")
communication_six.update(name_fr: "", name_de: "", name_nl: "")
communication_seven.update(name_fr: "", name_de: "", name_nl: "")

engagement_one.update(name_fr: "", name_de: "", name_nl: "")
engagement_two.update(name_fr: "", name_de: "", name_nl: "")
engagement_three.update(name_fr: "", name_de: "", name_nl: "")

languages_one.update(name_fr: "", name_de: "", name_nl: "")
languages_two.update(name_fr: "", name_de: "", name_nl: "")
languages_three.update(name_fr: "", name_de: "", name_nl: "")
languages_four.update(name_fr: "", name_de: "", name_nl: "")
languages_five.update(name_fr: "", name_de: "", name_nl: "")
languages_six.update(name_fr: "", name_de: "", name_nl: "")
languages_seven.update(name_fr: "", name_de: "", name_nl: "")
languages_eight.update(name_fr: "", name_de: "", name_nl: "")
languages_nine.update(name_fr: "", name_de: "", name_nl: "")

puts "Adding different languages to product descriptions..."

communication_one.update(description_fr: "", description_de: "", description_nl: "")
communication_two.update(description_fr: "", description_de: "", description_nl: "")
communication_three.update(description_fr: "", description_de: "", description_nl: "")
communication_four.update(description_fr: "", description_de: "", description_nl: "")
communication_five.update(description_fr: "", description_de: "", description_nl: "")
communication_six.update(description_fr: "", description_de: "", description_nl: "")
communication_seven.update(description_fr: "", description_de: "", description_nl: "")

engagement_one.update(description_fr: "", description_de: "", description_nl: "")
engagement_two.update(description_fr: "", description_de: "", description_nl: "")
engagement_three.update(description_fr: "", description_de: "", description_nl: "")

languages_one.update(description_fr: "", description_de: "", description_nl: "")
languages_two.update(description_fr: "", description_de: "", description_nl: "")
languages_three.update(description_fr: "", description_de: "", description_nl: "")
languages_four.update(description_fr: "", description_de: "", description_nl: "")
languages_five.update(description_fr: "", description_de: "", description_nl: "")
languages_six.update(description_fr: "", description_de: "", description_nl: "")
languages_seven.update(description_fr: "", description_de: "", description_nl: "")
languages_eight.update(description_fr: "", description_de: "", description_nl: "")
languages_nine.update(description_fr: "", description_de: "", description_nl: "")

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

languages_one.remote_photo_url = languages_pic_one
languages_one.save
languages_two.remote_photo_url = languages_pic_two
languages_two.save
languages_three.remote_photo_url = languages_pic_three
languages_three.save
languages_four.remote_photo_url = languages_pic_four
languages_four.save
languages_five.remote_photo_url = languages_pic_five
languages_five.save
languages_six.remote_photo_url = languages_pic_six
languages_six.save
languages_seven.remote_photo_url = languages_pic_seven
languages_seven.save
languages_eight.remote_photo_url = languages_pic_eight
languages_eight.save
languages_nine.remote_photo_url = languages_pic_nine
languages_nine.save
