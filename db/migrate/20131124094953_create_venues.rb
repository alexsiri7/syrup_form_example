class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :address
      t.string :description

      t.timestamps
    end
  end
end
