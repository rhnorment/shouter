class Shout < ActiveRecord::Base

	default_scope -> { order(created_at: :desc) }

	belongs_to  :content, polymorphic: true
  belongs_to 	:user
end
