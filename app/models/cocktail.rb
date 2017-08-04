class Cocktail < ApplicationRecord
  has_many :doses, :dependent => :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  mount_uploader :picture, PictureUploader

  def displayed_picture
    if picture.present?
      picture
    else
      "e8uavmmyjjma0iukxqra"
    end

  end
end
