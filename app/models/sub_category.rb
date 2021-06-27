# == Schema Information
#
# Table name: sub_categories
#
#  id         :integer          not null, primary key
#  category_id         :integer
#  name       :string(255)
#  enabled    :boolean
#  sort_order :integer
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SubCategory < ApplicationRecord
  soft_deletable :column => :deleted_at
  belongs_to :category

end
