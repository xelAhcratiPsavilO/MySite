class PagesController < ApplicationController

  def home

  end

  def accommodations

  end

  def afterparty

  end

  def rsvp
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      redirect_to action: 'home'
    else
      render 'rsvp'
    end
  end

  def rsvp_index
    @rsvps = Rsvp.all
  end

  def video

  end

  private
  def rsvp_params
    params.require(:rsvp).permit(:name, :surname, :email, :attending, :guests_number, :compantions, :dietary_restrictions, :other_dietary_restrictions, :songs)
  end
end
