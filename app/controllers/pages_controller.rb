class PagesController < ApplicationController

  def home

  end

  def accommodations

  end

  def afterparty

  end

  def rsvp
    @rsvps = Rsvp.all 
  end

  def video

  end
end
