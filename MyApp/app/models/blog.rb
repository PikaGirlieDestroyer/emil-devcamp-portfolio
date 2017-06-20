class Blog < ApplicationRecord
  enum status: {draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged
<<<<<<< HEAD
  
  validates_presence_of :title, :body
=======
  validates_presence_of :title, :body
  
  belongs_to :topic
>>>>>>> a3e93eb3a85028e38efeb1cc360a195bc67128c1
end
