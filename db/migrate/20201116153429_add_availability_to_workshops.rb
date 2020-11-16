class AddAvailabilityToWorkshops < ActiveRecord::Migration[6.0]
  def change
    add_column :workshops, :availability, :boolean
  end
end
