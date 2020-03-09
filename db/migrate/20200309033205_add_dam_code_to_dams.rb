class AddDamCodeToDams < ActiveRecord::Migration[6.0]
  def change
    add_column :dams, :dam_code, :string, :after => :id
  end
end
