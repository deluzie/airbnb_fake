class PagesController < ApplicationController
  def home
    @workshops = Workshop.all
  end
end
