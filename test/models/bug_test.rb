# == Schema Information
#
# Table name: bugs
#
#  id              :bigint           not null, primary key
#  actual_result   :string           not null
#  close_date      :datetime
#  components      :string           not null
#  dead_line       :datetime         not null
#  description     :text             not null
#  environment     :string           not null
#  expected_result :string           not null
#  platform        :string           not null
#  priority        :string           default("low"), not null
#  severity        :string           default("minor"), not null
#  status          :string           default("new"), not null
#  steps           :string           not null
#  testing_version :string           not null
#  title           :string           not null
#  url             :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  project_id      :bigint
#  user_id         :bigint
#
# Indexes
#
#  index_bugs_on_priority    (priority)
#  index_bugs_on_project_id  (project_id)
#  index_bugs_on_severity    (severity)
#  index_bugs_on_status      (status)
#  index_bugs_on_title       (title)
#  index_bugs_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (project_id => projects.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class BugTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
