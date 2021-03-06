class AvatarTag < ApplicationRecord
  belongs_to :avatar
  belongs_to :tag

  validates :tag, :presence => true, :uniqueness => { :scope => :avatar }
  validates :avatar, :presence => true, :uniqueness => { :scope => :tag }
end
