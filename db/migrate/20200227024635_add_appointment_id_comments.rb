class AddAppointmentIdComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :appointment_id, :integer
  end
end
