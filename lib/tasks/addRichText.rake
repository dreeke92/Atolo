task addRichText: :environment do

# Product.all.each do |p|

#   p.rich_description_en.update(body: p.description_en&.gsub("\n", "<br>"))
#   p.rich_description_de.update(body: p.description_de&.gsub("\n", "<br>"))
#   p.rich_description_fr.update(body: p.description_fr&.gsub("\n", "<br>"))
#   p.rich_description_nl.update(body: p.description_nl&.gsub("\n", "<br>"))

#   p.rich_long_description_en.update(body: p.long_description_en&.gsub("\n", "<br>"))
#   p.rich_long_description_de.update(body: p.long_description_de&.gsub("\n", "<br>"))
#   p.rich_long_description_fr.update(body: p.long_description_fr&.gsub("\n", "<br>"))
#   p.rich_long_description_nl.update(body: p.long_description_nl&.gsub("\n", "<br>"))

#   p.rich_learnings_en.update(body: p.learnings_en&.gsub("\n", "<br>"))
#   p.rich_learnings_de.update(body: p.learnings_de&.gsub("\n", "<br>"))
#   p.rich_learnings_fr.update(body: p.learnings_fr&.gsub("\n", "<br>"))
#   p.rich_learnings_nl.update(body: p.learnings_nl&.gsub("\n", "<br>"))

#   p.rich_practice_en.update(body: p.learnings_en&.gsub("\n", "<br>"))
#   p.rich_practice_de.update(body: p.learnings_de&.gsub("\n", "<br>"))
#   p.rich_practice_fr.update(body: p.learnings_fr&.gsub("\n", "<br>"))
#   p.rich_practice_nl.update(body: p.learnings_nl&.gsub("\n", "<br>"))

# end


      member_one = Member.create(
          first_name: "Mieke",
          last_name: "Van Oost",
          role: "Managing director Atolo Group",
          description_fr: "Notre point de référence sur l'horizon. Grâce à Mieke, Atolo regorge de talents. C'est par sa compassion, sa sincérité et son empathie que les équipes se sentent soutenues et motivées à faire le pas de plus. L'innovation, la proximité et la qualité ne sont pas négociables pour Mieke. Cela nous inspire à nous dépasser pour réussir vos projets.",
          description_en: "Our North Star. Thanks to Mieke, fostering talent & encouraging individual growth form the bedrock of Atolo. Through compassion, kindness and understanding, she supports the team in going beyond. The search for innovation, proximity and quality is a constant for Mieke. As a modern leader, she actually walks the talk. That is inspiration for all of us wanting to bring as much impact as possible to your projects.",
          description_de: I18n.t('about.team.member_one.text', locale: :de),
          description_nl: I18n.t('about.team.member_one.text', locale: :nl),
          location: "Lausanne & Brussels",
          linkedin: "https://www.linkedin.com/in/mieke-van-oost-5b6669a/",
          email:"mieke@atolo.eu"
          )
      member_one.remote_photo_url = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561648844/mieke.jpg"
      member_one.save
      member_two = Member.create(
        first_name: "David",
        last_name: "Michel",
        role: "Managing director Atolo Switzerland",
        description_fr: I18n.t('about.team.member_two.text', locale: :fr),
        description_en: I18n.t('about.team.member_two.text', locale: :en),
        description_de: I18n.t('about.team.member_two.text', locale: :de),
        description_nl: I18n.t('about.team.member_two.text', locale: :nl),
        location: "Lausanne & Brussels",
          linkedin: "https://www.linkedin.com/in/davidmichel1/",
          email:"david@atolo.ch"
          )
      member_two.remote_photo_url = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1569145586/david.jpg"
      member_two.save
      member_three = Member.create(
        first_name: "Oscar",
        last_name: "Vega",
        role: "Managing partner",
        description_fr: I18n.t('about.team.member_three.text', locale: :fr),
        description_en: I18n.t('about.team.member_three.text', locale: :en),
        description_de: I18n.t('about.team.member_three.text', locale: :de),
        description_nl: I18n.t('about.team.member_three.text', locale: :nl),
        location: "Lausanne & Brussels",
          linkedin: "https://www.linkedin.com/in/oscar-vega-2806207/",
          email:"oscar@atolo.eu"
          )
      member_three.remote_photo_url = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561648844/oscar.jpg"
      member_three.save
      member_four = Member.create(
        first_name: "Eva",
        last_name: "Vermeire",
        role: "Operations manager",
        description_fr: I18n.t('about.team.member_four.text', locale: :fr),
        description_en: I18n.t('about.team.member_four.text', locale: :en),
        description_de: I18n.t('about.team.member_four.text', locale: :de),
        description_nl: I18n.t('about.team.member_four.text', locale: :nl),
        location: "Brussels",
        linkedin: "https://www.linkedin.com/in/eva-vermeire-503a02a3/",
        email:"eva@atolo.eu"
        )
      member_four.remote_photo_url = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1569145397/eva.jpg"
      member_four.save
      member_five = Member.create(
        first_name: "Adeline",
        last_name: "Leguillier",
        role: "L&D Consultant",
        description_fr: I18n.t('about.team.member_five.text', locale: :fr),
        description_en: I18n.t('about.team.member_five.text', locale: :en),
        description_de: I18n.t('about.team.member_five.text', locale: :de),
        description_nl: I18n.t('about.team.member_five.text', locale: :nl),
        linkedin: "https://www.linkedin.com/in/adeline-leguillier-bab31361/",
        email:"adeline@atolo.eu"
        )
      member_five.remote_photo_url = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1608302285/Adeline_2.png"
      member_five.save
      member_six  = Member.create(
        first_name: "Maité",
        last_name: "Dantine",
        role: "L&D coordinator",
        description_fr: I18n.t('about.team.member_six.text', locale: :fr),
        description_en: I18n.t('about.team.member_six.text', locale: :en),
        description_de: I18n.t('about.team.member_six.text', locale: :de),
        description_nl: I18n.t('about.team.member_six.text', locale: :nl),
        location: "Brussels",
        linkedin: "https://www.linkedin.com/in/ma%C3%AFt%C3%A9-dantine-62160431/",
        email:"maite@atolo.eu"
        )
      member_six.remote_photo_url = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561648843/maite.jpg"
      member_six.save

      member_seven = Member.create(
        first_name: "Sofie",
        last_name: "Begine",
        role: "L&D specialist",
        description_fr: I18n.t('about.team.member_seven.text', locale: :fr),
        description_en: I18n.t('about.team.member_seven.text', locale: :en),
        description_de: I18n.t('about.team.member_seven.text', locale: :de),
        description_nl: I18n.t('about.team.member_seven.text', locale: :nl),
        location: "Brussels",
        linkedin: "https://www.linkedin.com/in/sofie-begine/",
        email:"sofie@atolo.eu"
        )
      member_seven.remote_photo_url = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561648844/sophie.jpg"
      member_seven.save
      member_eight = Member.create(
        first_name: "Céline",
        last_name: "Zaghet",
        role: "L&D specialist",
        description_fr: I18n.t('about.team.member_eight.text', locale: :fr),
        description_en: I18n.t('about.team.member_eight.text', locale: :en),
        description_de: I18n.t('about.team.member_eight.text', locale: :de),
        description_nl: I18n.t('about.team.member_eight.text', locale: :nl),
        location: "Brussels",
        linkedin: "https://www.linkedin.com/in/c%C3%A9line-zaghet/",
        email:"celine@atolo.eu"
        )
      member_eight.remote_photo_url = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561648843/celine.jpg"
      member_eight.save
      member_nine = Member.create(
        first_name: "Quentin",
        last_name: "Dubus",
        role: "L&D specialist",
        description_fr: I18n.t('about.team.member_nine.text', locale: :fr),
        description_en: I18n.t('about.team.member_nine.text', locale: :en),
        description_de: I18n.t('about.team.member_nine.text', locale: :de),
        description_nl: I18n.t('about.team.member_nine.text', locale: :nl),
        location: "Brussels",
        linkedin: "https://www.linkedin.com/in/quentin-dubus-129b178b/",
        email:"quentin@atolo.eu"
        )
      member_nine.remote_photo_url = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1569145191/quentin2.jpg"
      member_nine.save

      member_eleven = Member.create(
        first_name: "Claudia",
        last_name: "Fortes",
        role: "L&D Consultant",
        description_fr: I18n.t('about.team.member_eleven.text', locale: :fr),
        description_en: I18n.t('about.team.member_eleven.text', locale: :en),
        description_de: I18n.t('about.team.member_eleven.text', locale: :de),
        description_nl: I18n.t('about.team.member_eleven.text', locale: :nl),
        location: "Brussels",
        linkedin: "https://www.linkedin.com/in/claudiafortes/",
        email:"claudia@atolo.eu"
        )
      member_eleven.remote_photo_url = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1561648843/claudia.jpg"
      member_eleven.save

      member_twelve = Member.create(
        first_name: "Delia",
        last_name: "Mensitieri",
        role: "Academic Expert",
        description_fr: I18n.t('about.team.member_twelve.text', locale: :fr),
        description_en: I18n.t('about.team.member_twelve.text', locale: :en),
        description_de: I18n.t('about.team.member_twelve.text', locale: :de),
        description_nl: I18n.t('about.team.member_twelve.text', locale: :nl),
        location: "Brussels",
        linkedin: "https://www.linkedin.com/in/delia-mensitieri",
        email:"delia@atolo.eu"
        )
      member_twelve.remote_photo_url = "https://res.cloudinary.com/dr7ypsdyf/image/upload/v1584706299/delia2.png"
      member_twelve.save

      member_fourteen = Member.create(
        first_name: "Jan",
        last_name: "Vandenborre",
        role: "L&D Consultant",
        description_fr: I18n.t('about.team.member_fourteen.text', locale: :fr),
        description_en: I18n.t('about.team.member_fourteen.text', locale: :en),
        description_de: I18n.t('about.team.member_fourteen.text', locale: :de),
        description_nl: I18n.t('about.team.member_fourteen.text', locale: :nl),
        location: "Brussels",
        linkedin: "https://www.linkedin.com/in/jan-vandenborre-154565206/",
        email:"jan@atolo.eu"
        )
end
