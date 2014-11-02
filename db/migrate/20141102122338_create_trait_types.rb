class CreateTraitTypes < ActiveRecord::Migration
  def change
    create_table :trait_types do |t|
      t.string :name
      t.string :display
      t.string :description

      t.timestamps
    end
  end
end
