class Micropost < ApplicationRecord
  
  #callbacks
  belongs_to :user
  has_one_attached :image
  default_scope -> { order(created_at: :desc) }

  #validates
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}
  validates :image, 
            content_type: { in: %w[image/jpeg image/gif image/png], 
                                              messages: "must be a valid image format"},
            size: {less_than: 5.megabytes, 
                    messages: "should be less than 5MB"}
end
