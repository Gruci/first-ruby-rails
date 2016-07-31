class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :email,              :null => false, :default => ""
      t.string :title,              :null => false, :default => ""
      t.string :starter,              :null => false, :default => ""
      t.date :gather_date,              :null => false, :default => ""
      t.date :gather_end_date,              :null => false, :default => ""
      t.date :activity_date,              :null => false, :default => ""
      t.date :activity_end_date,              :null => false, :default => ""
      t.text :content,              :null => false, :default => ""

      t.timestamps null: false
    end
  end
end
