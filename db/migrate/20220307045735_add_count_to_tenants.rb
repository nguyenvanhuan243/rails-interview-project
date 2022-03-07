class AddCountToTenants < ActiveRecord::Migration[6.0]
  def change
    add_column :tenants, :count, :integer
  end
end
