class Post < ActiveRecord::Base
  attr_accessible :author, :content, :title

  validates :title, presence: true,
                    length: { maximum: 30 }

  validates :content, presence: true,
                      length: { minimum: 20 }
end
