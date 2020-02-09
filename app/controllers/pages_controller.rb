class PagesController < ApplicationController

  def home

  end

  def accommodation

  end

  def afterparty
    @afterparty = Afterparty.new
  end

  def create_afterparty
    @afterparty = Afterparty.new(afterparty_params)
    if @afterparty.save
      redirect_to action: 'home'
    else
      render 'afterparty'
    end
  end

  def afterparty_index
    @afterparty = Afterparty.all
    @afterparty_count = Afterparty.all.size
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
    @rsvp_count = Rsvp.all.size
  end

  def video

  end

  private

  def rsvp_params
    params.require(:rsvp).permit(:name, :surname, :email, :attending, :guests_number, :companions, :dietary_restrictions, :other_dietary_restrictions, :songs)
  end

  def afterparty_params
    params.require(:afterparty).permit(:name, :number, :days, :comment)
  end
end
