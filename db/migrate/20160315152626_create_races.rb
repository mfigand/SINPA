class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.integer :kms
      t.datetime :sync_date
      t.string :source
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
