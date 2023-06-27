task addContentTitle: :environment do


  # Product Page

  Title.find_or_create_by(
    unique_key: "product_key_take_away",
    page: "product",
    title_en: "Key take-aways & praticalities"
  )

  Title.find_or_create_by(
    unique_key: "product_target_group",
    page: "product",
    title_en: "Target Group"
  )

  Title.find_or_create_by(
    unique_key: "product_format",
    page: "product",
    title_en: "Format"
  )

  Title.find_or_create_by(
    unique_key: "product_languages",
    page: "product",
    title_en: "Languages"
  )

  Title.find_or_create_by(
    unique_key: "shared_curious_to_know_more",
    page: "product, pillar",
    title_en: "Curious to know more?"
  )

  Title.find_or_create_by(
    unique_key: "shared_btn_contact_us",
    page: "product, pillar, home_page",
    title_en: "Contact us"
  )

  # new home

  Title.find_or_create_by(
    unique_key: "shared_btn_how_can_we_help_you",
    page: "product, pillar, home_page",
    title_en: "How can we help you"
  )

  Title.find_or_create_by(
    unique_key: "home_page_languages_title",
    page: "home_page",
    title_en: "Language trainings"
  )

  Title.find_or_create_by(
    unique_key: "home_page_communication_title",
    page: "home_page",
    title_en: "Communication solutions"
  )

  Title.find_or_create_by(
    unique_key: "home_page_p_c_title",
    page: "home_page",
    title_en: "People and company culture development"
  )

  Title.find_or_create_by(
    unique_key: "home_page_leader_title",
    page: "home_page",
    title_en: "Leadership programmes"
  )

  Title.find_or_create_by(
    unique_key: "home_page_language_scan_title",
    page: "home_page",
    title_en: "Language scan"
  )

  Title.find_or_create_by(
    unique_key: "home_page_contact_title",
    page: "home_page",
    title_en: "Contact us"
  )

  Title.find_or_create_by(
    unique_key: "home_page_learn_more",
    page: "home_page",
    title_en: "Learn more"
  )

  Title.find_or_create_by(
    unique_key: "home_page_section_3_how_can_we_help_you",
    page: "home_page",
    title_en: "How can we help you?"
  )

  Title.find_or_create_by(
    unique_key: "home_page_section_3_how_can_we_help_you_description",
    page: "home_page",
    title_en: "As a training company in heart and soul, ATOLO supports organisations in creating thriving workplaces. Since our foundation in 2012, you can rely on in-depth Language and Communication training. Today, you can also request for impactful solutions in People & Culture and Leadership. Headquartered in Belgium with a subsidiary in Switzerland, our team of experts is here to help you and your teams grow."
  )

  Title.find_or_create_by(
    unique_key: "home_page_btn_about_us",
    page: "home_page",
    title_en: "About us"
  )

  Title.find_or_create_by(
    unique_key: "home_page_section_4_whats_new",
    page: "home_page",
    title_en: "What's new"
  )

  Title.find_or_create_by(
    unique_key: "summer_classes_title",
    page: "home_page, whats_new",
    title_en: "SUMMER CLASSES"
  )

  Title.find_or_create_by(
    unique_key: "summer_classes_start_date",
    page: "home_page, whats_new",
    title_en: "15 JUNE"
  )

  Title.find_or_create_by(
    unique_key: "summer_classes_end_date",
    page: "home_page, whats_new",
    title_en: "15 SEPTEMBER"
  )

  Title.find_or_create_by(
    unique_key: "summer_classes_description",
    page: "home_page, whats_new",
    title_en: "Are you looking to maximize your own language or leadership skills or those of your team? Look no further and join us this upcoming summer!"
  )

  Title.find_or_create_by(
    unique_key: "summer_classes_btn_discover_it",
    page: "home_page, whats_new",
    title_en: "Discover it here"
  )

  Title.find_or_create_by(
    unique_key: "home_pages_key_figures",
    page: "home_page",
    title_en: "Key figures"
  )

  Title.find_or_create_by(
    unique_key: "home_pages_key_figures_missions",
    page: "home_page",
    title_en: "Missions"
  )

  Title.find_or_create_by(
    unique_key: "home_pages_key_figures_coaches",
    page: "home_page",
    title_en: "Coaches"
  )

  Title.find_or_create_by(
    unique_key: "home_pages_key_figures_trainees",
    page: "home_page",
    title_en: "Trainees"
  )

  Title.find_or_create_by(
    unique_key: "home_pages_key_figures_satisfaction",
    page: "home_page",
    title_en: "Client satisfaction"
  )

  Title.find_or_create_by(
    unique_key: "testimonials_title",
    page: "home_page, pillar",
    title_en: "Testimonials"
  )

  Title.find_or_create_by(
    unique_key: "partners_title",
    page: "home_page",
    title_en: "Partners and Accreditations"
  )




end
