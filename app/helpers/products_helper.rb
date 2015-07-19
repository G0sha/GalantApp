module ProductsHelper
  def update_group
    groups = Group.all
    groups.each.map {|g| [g.name, g.id]}
  end

  def update_subgroup
    subgroups = Subgroup.all
    subgroups.each.map {|g| [g.name, g.id]}
  end
end
