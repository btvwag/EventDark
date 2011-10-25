class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to event_url(@event), :notice => 'Event saved'
    else
      flash.now[:warning] = 'Event was not saved'
      render :action => :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end
end
