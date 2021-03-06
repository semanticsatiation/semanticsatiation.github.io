# == Schema Information
#
# Table name: notifications
#
#  id                     :bigint           not null, primary key
#  action                 :string
#  context                :text             default(""), not null
#  link                   :string
#  read                   :boolean          default(FALSE)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  actor_id               :integer          not null
#  project_contributer_id :bigint
#  recipient_id           :integer          not null
#
# Indexes
#
#  index_notifications_on_project_contributer_id  (project_contributer_id)
#
# Foreign Keys
#
#  fk_rails_...  (project_contributer_id => project_contributers.id)
#
class Notification < ApplicationRecord
    belongs_to :recipient, class_name: "User"
    belongs_to :actor, class_name: "User"

    validates :context, presence: true
end
