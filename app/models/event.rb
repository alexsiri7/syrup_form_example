class Event < ActiveRecord::Base
  belongs_to :venue

  validates :start_date, presence: true
  validates :end_date, presence: true
end
