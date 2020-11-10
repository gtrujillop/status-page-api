# == Schema Information
#
# Table name: sites
#
#  id          :bigint           not null, primary key
#  name        :string
#  url         :string
#  type_id     :bigint           not null
#  country     :string
#  status_data :jsonb
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Site < ApplicationRecord
  belongs_to :type

  serialize :status_data, HashSerializer
  
  store_accessor :status_data, :status, :unresolved, :scheduled_maintenance,
    :summary, :components, :incidents
  
  validates :name, presence: true
  validates :url, presence: true
  validates :country, presence: true
end
