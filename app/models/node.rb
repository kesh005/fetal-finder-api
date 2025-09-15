# == Schema Information
#
# Table name: nodes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  child_id   :string
#  parent_id  :string
#
# Indexes
#
#  index_nodes_on_child_id   (child_id)
#  index_nodes_on_parent_id  (parent_id)
#
class Node < ApplicationRecord
  has_many :children, class_name: "Node", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Node", optional: true
end
