class Picture < ActiveRecord::Base
	scope :newest_first, -> { order(created_at: :desc) }
	scope :most_recent_five, -> { newest_first.limit(5) }
end
