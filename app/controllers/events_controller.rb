class EventsController < ApplicationController
  def new
  end

  def create
    @event = Event.new
    @event.title = params[:title]
    @event.content = params[:content]
    @event.place = params[:place]
    @event.save
    redirect_to event_path(@event.id)
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.title = params[:title]
    @event.content = params[:content]
    @event.place = params[:place]
    @event.save
    redirect_to event_path(@event.id)
  end
end
