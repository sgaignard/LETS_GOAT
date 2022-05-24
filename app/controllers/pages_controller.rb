class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @goats = Goat.order("cuteness DESC").first(6)
  end
end
