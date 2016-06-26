class Shout < ActiveRecord::Base

	default_scope -> { order(created_at: :desc) }
	scope :text_shouts, -> { where(content_type: 'TextShout') }

	belongs_to  :content, polymorphic: true
  belongs_to 	:user

  searchable do 
  	text :content do 
  		content.index
  	end
  end

end
