class EventDetailsController < ApplicationController
  before_action :set_event

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event), notice: 'Event was successfully updated.'
    else
      render action: 'edit'
    end
  end

  private

  def set_event
    @event = EventDetailsForm.find(params[:id])
  end

  def event_params
    params.require(:event_details).permit(:price, venue_attributes: [:address, :description])
  end


end
