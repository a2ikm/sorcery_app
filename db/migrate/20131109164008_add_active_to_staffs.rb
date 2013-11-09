class AddActiveToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :active, :boolean, default: true, null: false
  end
end
