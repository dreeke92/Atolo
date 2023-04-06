class LegalPagesController < ApplicationController

  def show
    @legal_page = LegalPage.find_by_slug(params[:slug])
  end
end
