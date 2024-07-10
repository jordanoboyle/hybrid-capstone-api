class CreateSystems < ActiveRecord::Migration[7.1]
  def change
    create_table :systems do |t|
      t.string :name
      t.string :company

      t.timestamps
    end
  end
end
