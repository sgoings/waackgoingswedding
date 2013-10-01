class PeopleController < ApplicationController

  def index
    @person = People.search_by_address(params[:address])

    if !params[:address].empty? && @person
      render 'update'
    else
      flash[:search_status] = "Could not find address. Try again?"
      render "search"
    end
  end

  def update
    @person = People.find_by_address(params[:id])
    @person.update_attributes!(people_params)
    flash[:update_status] = "Updated your RSVP status!"
  end

  private
    def people_params
      params.require(:people).permit(:attend)
    end
end
