class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits do |t|
      t.string :name
      t.string :display
      t.string :description
      t.belongs_to :trait_type, index: true

      t.timestamps
    end
  end
end
