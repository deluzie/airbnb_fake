class ChangeAvailabilityToBoolean < ActiveRecord::Migration[6.0]
  def change
    remove_column :workshops, :availability
  end
end
