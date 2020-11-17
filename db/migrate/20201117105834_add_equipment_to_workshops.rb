class AddEquipmentToWorkshops < ActiveRecord::Migration[6.0]
  def change
    add_column :workshops, :equipment, :string
  end
end
