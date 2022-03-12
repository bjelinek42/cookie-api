class CreateCookies < ActiveRecord::Migration[7.0]
  def change
    create_table :cookies do |t|
      t.string :name
      t.integer :calories
      t.string :size

      t.timestamps
    end
  end
end
