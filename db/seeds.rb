def create_tree(levels, children_count, current_level = 1, parent = nil)
  return if current_level > levels

  3.times do |i|
    node = Node.create(name: "Node L#{current_level}N#{i + 1}", parent: parent)
    create_tree(levels, children_count, current_level + 1, node)
  end
end

3.times do |parent_i|
  parent = Node.create(name: "ParentTree #{parent_i + 1}")
  create_tree(4, 3, 1, parent)
end
