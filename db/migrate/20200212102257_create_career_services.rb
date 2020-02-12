class CreateCareerServices < ActiveRecord::Migration[6.0]
  def change
    create_table :career_services do |t|
      t.string :name
      t.string :address
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
