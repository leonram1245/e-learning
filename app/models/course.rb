class Course < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :description, presence:true, length: {:minimum => 25}
    def to_s
        title
    end
    has_rich_text :description
 
end