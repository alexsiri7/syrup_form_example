class EventDetailsForm < Syrup::FormObject
  wraps :event
  accepts_nested_attributes_for :venue
  form_name :event_details

  def after_find(params)
    event.build_venue if event.venue.nil?
  end
end
