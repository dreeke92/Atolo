puts "Destroying all records of products..."

Product.destroy_all

puts "Fetching pictures..."

# communication_pic_one = "https://images.unsplash.com/photo-1559526323-cb2f2fe2591b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_one = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561639320/Atolo-57.jpg"
communication_pic_two = "https://images.unsplash.com/photo-1453738773917-9c3eff1db985?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_three = "https://images.unsplash.com/photo-1500565534308-0db60f7116f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_four = "https://images.unsplash.com/photo-1520110120835-c96534a4c984?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2694&q=80"
# communication_pic_four = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561639275/Atolo-2.jpg"
communication_pic_five = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561714946/communication20.png"
communication_pic_six = "https://images.unsplash.com/photo-1551547600-8d30c2559da8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
communication_pic_seven = "https://images.unsplash.com/photo-1516321497487-e288fb19713f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
# communication_pic_seven = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561639312/Atolo-39.jpg"
# communication_pic_seven = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561639312/Atolo-39.jpg"

engagement_pic_one = "https://images.unsplash.com/photo-1457131760772-7017c6180f05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1336&q=80"
engagement_pic_two = "https://images.unsplash.com/photo-1533284133567-0da9844151ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80"
engagement_pic_three = "https://images.unsplash.com/photo-1521200379774-e541c236ea33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"

languages_pic_one = "https://images.unsplash.com/photo-1532102522784-9e4d4d9a533c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
# languages_pic_one = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561639283/Atolo-19.jpg"
# languages_pic_two = "https://images.unsplash.com/photo-1455885661740-29cbf08a42fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
languages_pic_two = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561639272/Atolo-11.jpg"
# languages_pic_three = "https://images.unsplash.com/photo-1532619675605-1ede6c2ed2b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
languages_pic_three = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561639328/Atolo-62.jpg"
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

puts "Adding french to product names..."

communication_one.update(name_fr: "Ecouter pour mieux comprendre")
communication_two.update(name_fr: "Communiquer (présenter) avec impact")
communication_three.update(name_fr: "Donner du feedback")
communication_four.update(name_fr: "Communiquer pour des experts métiers")
communication_five.update(name_fr: "Déléguer")
communication_six.update(name_fr: "Faire preuve d’assertivité")
communication_seven.update(name_fr: "Influencer et convaincre")

engagement_one.update(name_fr: "Activer l’Engagement")
engagement_two.update(name_fr: "Accélérer l‘Engagement")
engagement_three.update(name_fr: "Ancrer l’Engagement")

languages_one.update(name_fr: "Apprendre en travaillant")
languages_two.update(name_fr: "Le Classic")
languages_three.update(name_fr: "L’apprentissage collaboratif")
languages_four.update(name_fr: "Un savant mélange de langues et de communication")
languages_five.update(name_fr: "Formations en langues sur le terrain")
languages_six.update(name_fr: "Développement de compétences à l’écrit")
languages_seven.update(name_fr: "L’apprentissage par téléphone ou par Skype / Zoom")
languages_eight.update(name_fr: "Partager ses opinions avec d’autres")
languages_nine.update(name_fr: "Un crédit langues")

puts "Adding french to product descriptions..."

communication_one.update(description_fr: "Vous souhaitez développer votre capacité d’écoute active. Cela, sans faire preuve de jugement, sans interrompre et afin de véritablement comprendre le processus de réflexion de vos interlocuteurs. Votre propre communication deviendra plus impactante. Nos solutions sont modulaires et adaptées à vos besoins.")
communication_two.update(description_fr: "Vous souhaitez communiquer de façon assurée et en toute confiance. Il vous est important de générer de l’impact auprès de vos interlocuteurs tout en vous sentant pleinement à l’aise dans votre rôle. Cette solution est prévue en format individuel ou en groupe. Deux formules existent couvrant soit un jour complet ou deux journées complètes selon les besoins identifiés.")
communication_three.update(description_fr: "Vous souhaitez vous sentir à l’aise dans le contexte d’un feedback. Votre communication se doit d’être claire et respectueuse. Vous souhaitez inspirer votre interlocuteur et obtenir leur adhésion même lorsque le sujet est sensible. Vous accordez aussi de l’important au fait de recevoir du feedback et de réagir professionnellement et honnêtement à celui-ci.Nos solutions sont modulaires et adaptées à vos besoins.")
communication_four.update(description_fr: "Comme expert dans votre domaine d’activité, vous êtes invités à échanger avec autrui dans le cadre de votre fonction. Bien que disposant de toutes les connaissances nécessaires, bien communiquer n’est pas, à priori, votre fort. Votre message se doit d’être clair et concis. Vous souhaitez être assertif et avoir un impact auprès de vos interlocuteurs. Cette solution est prévue en format individuel ou en groupe. Les formules sont adaptées selon votre contexte. ")
communication_five.update(description_fr: "Vous souhaitez déléguer de façon efficiente et transparente afin d’atteindre les objectifs définis. Surtout, vous souhaitez que vos interlocuteurs se sentent respectés, bénéficient de votre confiance et disposent de votre soutien pour se développer.Nos solutions sont modulaires et adaptées à vos besoins.")
communication_six.update(description_fr: "Votre communication se veut assertive et claire. La confiance en soi se ressent. Vous souhaitez établir le cadre de votre message simplement et en confiance tout en respectant le cadre défini de vos interlocuteurs. Nos solutions sont modulaires et adaptées à vos besoins.")
communication_seven.update(description_fr: "Vous souhaitez prendre la parole plus fréquemment lors de réunions et communiquer clairement vos pensées en convictions. Tout en écoutant attentivement vos interlocuteurs, vous arrivez à structurer votre message de façon à convaincre et à maintenir l’attention de vos collègues et supérieurs. Nos solutions sont modulaires et adaptées à vos besoins.")

engagement_one.update(description_fr: "Lors de ce workshop d’une demi-journée, nous vous faisons prendre conscience de ce qui vous anime, ce qui vous motive et ce qui constitue votre échelle de valeurs. Nous créons un cadre bienveillant où il est possible d’échanger avec vos collègues et où le lien est établi avec votre organisation. Cette plateforme vous permettra de définir votre propre axe d’engagement et d’identifier les améliorations nécessaires au sein de votre environnement pour accélérer et ancrer un sentiment d’appartenance durable.")
engagement_two.update(description_fr: "Ce workshop planifié sur un jour et demi permet de faire le pont entre  'moi' et 'nous'. Il s’agit de la clé menant à des adaptations comportementales ciblées. Cette étape accélère le processus d’engagement en établissant des plans d’actions concrets, propres aux besoins de votre réalité professionnelle. Ce processus, inclusif et agile, délivrera un ensemble de valeurs collectif où chacun apportera sa pierre à l’édifice. Les actions définies auront pour but de soutenir le niveau d’engagement souhaité et seront au service des missions et de la vision définies par l’organisation et ses équipes. Des résultats tangibles en découleront et auront un impact positif, tant sur les résultats de l’organisation que sur le bien-être de ses collaborateurs.")
engagement_three.update(description_fr: "Dédiés à un impact durable au sein de nos organisations partenaires et engagés à ancrer l’engagement au sein de votre culture d’entreprise, nous vous soutiendrons dans les démarches ad-hoc assurant cet engagement au sein de vos équipes. Plans de formations, stratégies de monitoring, conseils sur les priorités de développements individuels… nos experts sont à vos côtés pour définir la solution durable adaptée à vos besoins.")

languages_one.update(description_fr: "Nous vous invitons à développer vos compétences linguistiques en appliquant des méthodologies d’apprentissage au sein d’un business case réel, propre à votre métier. Individuel ou en groupe. Format et nombre d’heures à définir avec votre conseiller selon vos vrais besoins.")
languages_two.update(description_fr: "Une formation linguistique pour un ou plusieurs participants. La durée et le rythme sont établis selon les objectifs définis. Un trajet de formation court, ciblé et impactant.")
languages_three.update(description_fr: "Une expérience en équipe visant une langue cible et mêlant des réunions flashs, du coaching individuel et des formations en groupes. En groupe. Format et nombre d’heures à définir avec votre conseiller selon vos vrais besoins.")
languages_four.update(description_fr: "Tout en améliorant votre niveau linguistique, développez une compétence en communication. Individuel ou en groupe. Format et nombre d’heures à définir avec votre conseiller selon vos vrais besoins.")
languages_five.update(description_fr: "Vous exercez vos compétences linguistiques dans votre environnement de travail journalier. Individuel ou en groupe. Format et nombre d’heures à définir avec votre conseiller selon vos vrais besoins.")
languages_six.update(description_fr: "Un programme individualisé et ciblé avec une attention exclusivement portée sur vos compétences à l’écrit dans une langue cible. Le contexte est défini selon vos besoins : rapports, notes, compte rendus, audits, mails… Individuel ou en groupe. Format et nombre d’heures à définir avec votre conseiller selon vos vrais besoins.")
languages_seven.update(description_fr: "Dès lors que votre besoin en communication n’est pas de visu ou que vous avez besoin d’un maximum de flexibilité dans la planification de vos sessions de formations. Solution pour des niveaux B1 minimum. Individuel ou en groupe. Format et nombre d’heures à définir avec votre conseiller selon vos vrais besoins.")
languages_eight.update(description_fr: "Des tables de conversations couvrant des sujets relatifs à votre environnement de travail et où le feedback est apprécié, les avis sont partagés et les arguments défendus. Tout cela, dans la langue cible choisie. En groupe. Format et nombre d’heures à définir avec votre conseiller selon vos vrais besoins.")
languages_nine.update(description_fr: "Pour celles et ceux ayant un agenda très chargé et ayant besoin d’une solution flexible, modulaire et agile. La solution crédit permet une gestion selon vos besoins professionnels du moment et vos disponibilités.")

puts "Adding dutch to products..."

communication_one.update(name_nl: "Luisteren om te begrijpen", description_nl: "Je wil krachtiger communiceren door echt te luisteren. Zonder vooroordelen, zonder te onderbreken. Je wil het denkproces van de andere begrijpen en hem laten voelen dat er naar hem geluisterd wordt.  Trainingen voor 1 of meer deelnemers. Aangepast format volgens behoeftes.")
communication_two.update(name_nl: "Presenteren met impact", description_nl: "Comfortabel en zelfverzekerd. Zo wil je performeren in het bijzijn van anderen. Voor jou is het cruciaal om buy-in te krijgen en impact te hebben.  Trainingen voor 1 of meer deelnemers. Aangepast format volgens behoeftes.")
communication_three.update(name_nl: "Feedback geven", description_nl: "Je wil je comfortabel voelen als je feedback geeft. Je wil je boodschap helder en respectvol overbrengen. Je wil mensen inspireren, hun buy-in krijgen, ook voor gevoelige onderwerpen. Je wil zelf ook openstaan voor het ontvangen van feedback. Trainingen voor 1 of meer deelnemers, aangepast format volgens behoeftes.")
communication_four.update(name_nl: "Communicatie voor experten", description_nl: "Als expert kan je je soms verliezen in je vakexpertise en vind je goed communiceren moeilijk. De boodschap moet duidelijk en beknopt zijn en je wil impact hebben en je zelfverzekerd voelen. Trainingen voor 1 of meer deelnemers. Aangepast format volgens behoeftes.")
communication_five.update(name_nl: "Delegeren", description_nl: "Je wil delegeren op een efficiënte en transparante manier zodat doelstellingen bereikt kunnen worden. Maar bovenal wil je dat mensen voelen dat je hen vertrouwt en hen helpt groeien. Trainingen voor 1 of meer deelnemers. Aangepast format volgens behoeftes.")
communication_six.update(name_nl: "Assertiviteit", description_nl: "Je wil zelfvertrouwen uitstralen als je iets te zeggen hebt, je ideeën kordaat en helder overbrengen. Je wil je grenzen duidelijk kunnen stellen zonder die van anderen te overschrijden. Trainingen voor 1 of meer deelnemers. Aangepast format volgens behoeftes.")
communication_seven.update(name_nl: "Invloed hebben en overtuigen", description_nl: "Je zou vaker het woord willen nemen tijdens vergaderingen, op een comfortabele manier kunnen zeggen wat je denkt, beter luisteren naar en spreken met de mensen rondom jou. Trainingen voor 1 of meerdere personen.  Aangepast format volgens behoeftes.")

engagement_one.update(name_nl: "Activate Engagement", description_nl: "Wat triggert het engagement van jouw mensen? Is er een connectie tussen hun individuele waarden en die van de organisatie? In deze workshop van vier uur krijg je tools om een proces van zelfsturing in gang te trekken en je mensen tot actie aan te zetten. Een workshop van vier uur waarin medewerkers eerst hun drijfveren identificeren, die dan aan de waarden van de organisatie linken en uiteindelijk spontaan ontdekken hoe ze méér kunnen betekenen voor het gemeenschappelijke doel van hun organisatie.")
engagement_two.update(name_nl: "Accelerate Engagement", description_nl: "De volgende stap in het engagementproces brengt concrete actiepunten en gedragsveranderingen. Mensen gaan hun persoonlijke drijfveer linken aan de collectieve drijfveer. Het team kiest samen de  waarden die ze willen meenemen in de toekomst. Ze bepalen tastbare actiepunten en gedrag om het engagement levendig te houden. Alles wordt afgestemd op de waarden van jullie organisatie en ondersteunt het uitdragen van de missie van de organisatie. Tijdens dit traject van anderhalve dag krijgt het team ondersteuning voor de eerste fase van de uitvoering van het actieplan.")
engagement_three.update(name_nl: "Anchor Engagement", description_nl: "We ondersteunen je organisatie bij het integreren van engagement in jullie DNA.")

languages_one.update(name_nl: "Werken en leren", description_nl: "Een taaltraining verweven binnen een concreet businessproject.")
languages_two.update(name_nl: "Atolo Classic", description_nl: "Taaltraining voor één of meer deelnemers. Duur en frequentie naargelang je situatie. Zoals het een classic betaamt: een leertraject dat je deelnemers nooit zullen vergeten.")
languages_three.update(name_nl: "Collaboratief leren", description_nl: "Een dynamische teamervaring in de doeltaal, gecombineerd met scrummeetings, individuele coaching en groepsopleidingen.")
languages_four.update(name_nl: "Taal- en communicatieskills: een perfecte blend", description_nl: "Een taal leren en tegelijk een soft skill ontwikkelen: een ideale combinatie.")
languages_five.update(name_nl: "Taaltraining op de werkvloer", description_nl: "Een taal leren op de werkvloer zelf. Je schaaft je taalskills bij in jouw reële werkomgeving.")
languages_six.update(name_nl: "Schrijfvaardigheid", description_nl: "Een uiterst gepersonaliseerd programma met focus op de teksten die je dagdagelijks schrijft: verslagen, notules, klantendienst, audits, ...")
languages_seven.update(name_nl: "Telefoon of skype", description_nl: "Als je communicatiekanaal niet face to face is. Of je bent op zoek naar een flexibele Training.")
languages_eight.update(name_nl: "Deel je mening met anderen", description_nl: "Conversatietafels, interessante businesstopics, waardevolle feedback. Iedereen welkom! Geen spelregels behalve: je ideeën en opinie delen met anderen. In de doeltaal, uiteraard!")
languages_nine.update(name_nl: "Taalkrediet", description_nl: "Een kredietlijn voor een aantal uur training, speciaal voor wie een drukke agenda heeft. Geen beperkingen, pure flexibiliteit, training wanneer je er nood aan hebt.")

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
