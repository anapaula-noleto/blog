class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  def self.search(search)
    if search
      where(["title LIKE ?", "%#{search}%"])
    else
      all
    end
  end
end
