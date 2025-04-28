class PagesController < ApplicationController
  def services
    @services = Service.all
  end
end
