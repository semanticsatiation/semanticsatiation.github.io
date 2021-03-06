# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  biography       :text             default(""), not null
#  guest           :boolean          default(FALSE)
#  password_digest :string           not null
#  session_token   :string           not null
#  theme           :string           default("Default"), not null
#  username        :string           default(""), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_session_token  (session_token) UNIQUE
#  index_users_on_username       (username) UNIQUE
#
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
