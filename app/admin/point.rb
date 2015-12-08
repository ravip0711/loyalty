ActiveAdmin.register Point do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

#added for nested points in customers
controller do
    nested_belongs_to :customer
end

permit_params :point_total, :admin_id, :customer_id

menu priority: 3

index do
  column :id
  column :point_total
  column :customer
  column :admin_id
  column :created_at
  column :updated_at

  actions
end

end
