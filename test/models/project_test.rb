# == Schema Information
#
# Table name: projects
#
#  id              :bigint           not null, primary key
#  description     :string           not null
#  name            :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :bigint
#  user_id         :bigint
#
# Indexes
#
#  index_projects_on_created_at       (created_at)
#  index_projects_on_name             (name)
#  index_projects_on_organization_id  (organization_id)
#  index_projects_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
