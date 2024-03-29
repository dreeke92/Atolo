
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
      field :id
      field :name_en
      field :name_de
      field :name_fr
      field :name_nl

      field :group

      field :photo
      field :ranking

      field :created_at
    end

    show do
      field :id
      field :name_en
      field :name_de
      field :name_fr
      field :name_nl

      field :group

      field :photo
      field :ranking

      field :quote_en
      field :quote_fr
      field :quote_nl
      field :quote_de
      field :quote_author_en
      field :quote_author_fr
      field :quote_author_nl
      field :quote_author_de

      field :rich_description_en
      field :rich_description_de
      field :rich_description_fr
      field :rich_description_nl

      field :practicality_1_en
      field :practicality_2_en
      field :practicality_3_en
      field :practicality_4_en
      field :practicality_5_en
      field :practicality_6_en
      field :practicality_1_fr
      field :practicality_2_fr
      field :practicality_3_fr
      field :practicality_4_fr
      field :practicality_5_fr
      field :practicality_6_fr
      field :practicality_1_nl
      field :practicality_2_nl
      field :practicality_3_nl
      field :practicality_4_nl
      field :practicality_5_nl
      field :practicality_6_nl
      field :practicality_1_de
      field :practicality_2_de
      field :practicality_3_de
      field :practicality_4_de
      field :practicality_5_de
      field :practicality_6_de

      field :target_group_en
      field :target_group_fr
      field :target_group_nl
      field :target_group_de

      field :format_en
      field :format_fr
      field :format_nl
      field :format_de

      field :languages_en
      field :languages_fr
      field :languages_nl
      field :languages_de

      field :summer_rich_description_1_en
      field :summer_rich_description_1_fr
      field :summer_rich_description_1_nl
      field :summer_rich_description_1_de

      field :summer_rich_description_2_en
      field :summer_rich_description_2_fr
      field :summer_rich_description_2_nl
      field :summer_rich_description_2_de


    end

    edit do
      field :id
      field :name_en
      field :name_de
      field :name_fr
      field :name_nl

      field :group

      field :photo
      field :ranking

      field :quote_en
      field :quote_fr
      field :quote_nl
      field :quote_de
      field :quote_author_en
      field :quote_author_fr
      field :quote_author_nl
      field :quote_author_de

      field :rich_description_en
      field :rich_description_de
      field :rich_description_fr
      field :rich_description_nl

      field :practicality_1_en
      field :practicality_2_en
      field :practicality_3_en
      field :practicality_4_en
      field :practicality_5_en
      field :practicality_6_en
      field :practicality_1_fr
      field :practicality_2_fr
      field :practicality_3_fr
      field :practicality_4_fr
      field :practicality_5_fr
      field :practicality_6_fr
      field :practicality_1_nl
      field :practicality_2_nl
      field :practicality_3_nl
      field :practicality_4_nl
      field :practicality_5_nl
      field :practicality_6_nl
      field :practicality_1_de
      field :practicality_2_de
      field :practicality_3_de
      field :practicality_4_de
      field :practicality_5_de
      field :practicality_6_de

      field :target_group_en
      field :target_group_fr
      field :target_group_nl
      field :target_group_de

      field :format_en
      field :format_fr
      field :format_nl
      field :format_de

      field :languages_en
      field :languages_fr
      field :languages_nl
      field :languages_de

      field :rich_practice_en
      field :rich_practice_nl
      field :rich_practice_de
      field :rich_practice_fr

      field :summer_rich_description_1_en
      field :summer_rich_description_1_fr
      field :summer_rich_description_1_nl
      field :summer_rich_description_1_de

      field :summer_rich_description_2_en
      field :summer_rich_description_2_fr
      field :summer_rich_description_2_nl
      field :summer_rich_description_2_de
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
