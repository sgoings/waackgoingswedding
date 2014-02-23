class PeopleController < ApplicationController

  def index
    @person = People.search_by_address(params[:address])

    if !params[:address].empty? && @person
      redirect_to @person
    else
      flash[:search_status] = "Could not find address. Try again?"
      render "search"
    end
  end

  def show
    @person = People.find_by_address(params[:id])

    render 'update'
  end

  def update
    @person = People.find_by_address(params[:id])
    @person.update_attributes!(people_params)

    begin
      logger.info "Trying to send email #{@person.email} ..."
      RsvpMailer.rsvp_email(@person, request.original_url).deliver
      flash[:update_status] = "Updated your RSVP status! (sent an email, too)"
    rescue
      logger.info "Sending mail to #{@person.email} failed!"
      flash[:update_status] = "Updated your RSVP status!"
    end
    
  end

  private
    def people_params
      params.require(:people).permit(
        :attend,
        :email,
        :actual_adults,
        :actual_kids
      )
    end
end
