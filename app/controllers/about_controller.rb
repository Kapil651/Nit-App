class AboutController < ApplicationController
   def index
    @company_description = "Your company description goes here."
    @team_members = TeamMember.all # Assuming you have a TeamMember model
  end
end
