# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  content    :text(255)
#  user_name  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  room_id    :integer
#

require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
