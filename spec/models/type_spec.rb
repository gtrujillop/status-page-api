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
require 'rails_helper'

RSpec.describe Type, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
