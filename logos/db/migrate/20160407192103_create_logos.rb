class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :team
      t.string :conference
      t.string :url

      t.timestamps null: false
    end
  end
end
