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
require 'rails_helper'

RSpec.describe Site, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
