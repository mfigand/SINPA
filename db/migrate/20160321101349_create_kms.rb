class CreateKms < ActiveRecord::Migration
  def change
    create_table :kms do |t|
      t.integer :kms
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
