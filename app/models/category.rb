# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  enabled    :boolean
#  sort_order :integer
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  soft_deletable :column => :deleted_at
  mount_base64_uploader :image, CategoryImageUploader
  has_many :sub_categories, dependent: :destroy
  scope :contents, -> { where(enabled: true).order(:sort_order).select(:id, :name, :sort_order, :enabled, :image) }
end
