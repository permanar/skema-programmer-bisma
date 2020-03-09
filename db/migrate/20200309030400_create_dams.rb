class CreateDams < ActiveRecord::Migration[6.0]
  def change
    create_table :dams do |t|
      t.string :name
      t.string :region
      t.string :size
      t.datetime :dam_created

      t.timestamps
    end
  end
end
