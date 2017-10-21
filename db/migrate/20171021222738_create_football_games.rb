class CreateFootballGames < ActiveRecord::Migration
  def change
    create_table :football_games do |t|
      t.string :name
      t.string :age
      t.string :height
      t.string :weight
      t.string :phone

      t.timestamps null: false
    end
  end
end
