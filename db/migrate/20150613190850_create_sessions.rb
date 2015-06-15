class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :title
      t.string :slug
      t.integer :team_id

      t.timestamps null: false
    end
  end
end
