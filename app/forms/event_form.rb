class EventForm < Syrup::FormObject
  wraps :event

  attribute :length_of_the_event, Integer
  validates :length_of_the_event, numericality: {greater_than: 0}

  before_validation :before_validation

  def before_validation
    self.end_date = event.start_date + length_of_the_event.to_i.hours
  end
end
