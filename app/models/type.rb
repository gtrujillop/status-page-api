# == Schema Information
#
# Table name: types
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  type       :enum
#
class Type < ApplicationRecord
  enum status: { company: 'company', service: 'service', app: 'app' }

  has_many :sites
end
