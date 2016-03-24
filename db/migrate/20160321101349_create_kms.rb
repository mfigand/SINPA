class CreateKms < ActiveRecord::Migration
  def change
    create_table :kms do |t|
      t.integer :kms, default: 0
      t.integer :total_kms, default: 0
      t.integer :level, default: 0
      t.integer :races, default: 0
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
