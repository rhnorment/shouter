class Shout < ActiveRecord::Base

	default_scope -> { order(created_at: :desc) }

  belongs_to 	:user

  validates		:body, presence: true

end