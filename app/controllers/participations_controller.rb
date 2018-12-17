class ParticipationsController < ApplicationController

def create
    @event = Event.find(params[:event_id])
    @participation = Participation.create(event: @event)
    @participation.user = current_user

    if @participation.save
      redirect_to event_path(@event), notice: 'Event was successfully created.'
    else
      render :new
    end
  end

def index
  @participations = Participation.all
end


def show
   @event = Event.find(params[:event_id])

end

  private
    def event_params
      params.require(:participation).permit(:user_id, :event_id)
    end

end
