class CreateAbilityItems < ActiveRecord::Migration[5.2]
  def change
    create_table :ability_items do |t|
      t.references :ability, foreign_key: true
      t.references :permission, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
