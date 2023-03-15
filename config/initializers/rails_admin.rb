
# ActionText::ContentHelper.allowed_tags += ["span"]
# ActionText::ContentHelper.allowed_attributes += ['style']
ActionText::ContentHelper.allowed_attributes << 'style'

RailsAdmin.config do |config|
  config.asset_source = :webpacker

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  config.model 'Product' do
    list do
      field :name_en
      field :name_de
      field :name_fr
      field :name_nl

      field :group

      field :photo
      field :ranking

      field :subtitle_en
      field :subtitle_de
      field :subtitle_fr
      field :subtitle_nl

      field :cta_en
      field :cta_de
      field :cta_fr
      field :cta_nl

      field :long_cta_en
      field :long_cta_de
      field :long_cta_fr
      field :long_cta_nl

      field :created_at
    end

    show do
      field :name_en
      field :name_de
      field :name_fr
      field :name_nl

      field :group

      field :photo
      field :ranking

      field :subtitle_en
      field :subtitle_de
      field :subtitle_fr
      field :subtitle_nl

      field :cta_en
      field :cta_de
      field :cta_fr
      field :cta_nl

      field :long_cta_en
      field :long_cta_de
      field :long_cta_fr
      field :long_cta_nl

      field :rich_description_en
      field :rich_description_de
      field :rich_description_fr
      field :rich_description_nl

      field :rich_long_description_en
      field :rich_long_description_de
      field :rich_long_description_fr
      field :rich_long_description_nl

      field :rich_learnings_en
      field :rich_learnings_de
      field :rich_learnings_fr
      field :rich_learnings_nl

      field :rich_practice_en
      field :rich_practice_de
      field :rich_practice_fr
      field :rich_practice_nl
    end

    edit do
      field :name_en
      field :name_de
      field :name_fr
      field :name_nl

      field :group

      field :photo
      field :ranking

      field :subtitle_en
      field :subtitle_de
      field :subtitle_fr
      field :subtitle_nl

      field :cta_en
      field :cta_de
      field :cta_fr
      field :cta_nl

      field :long_cta_en
      field :long_cta_de
      field :long_cta_fr
      field :long_cta_nl

      field :rich_description_en
      field :rich_description_de
      field :rich_description_fr
      field :rich_description_nl

      field :rich_long_description_en
      field :rich_long_description_de
      field :rich_long_description_fr
      field :rich_long_description_nl

      field :rich_learnings_en
      field :rich_learnings_de
      field :rich_learnings_fr
      field :rich_learnings_nl

      field :rich_practice_en
      field :rich_practice_de
      field :rich_practice_fr
      field :rich_practice_nl
    end
  end


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
