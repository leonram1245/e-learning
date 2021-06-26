class Course < ApplicationRecord
    belongs_to :user
    validates :title, :price, :level, :language, :short_description, presence: true
    validates :description, presence:true, length: {:minimum => 25}
    def to_s
        title
    end
    has_rich_text :description
    extend FriendlyId
    friendly_id :title, use: :slugged
end
