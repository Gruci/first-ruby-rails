class CreateCostarters < ActiveRecord::Migration
  def change
    create_table :costarters do |t|
      t.string :email,              :null => false, :default => ""
      t.string :title,              :null => false, :default => ""
      t.string :copy,              :null => false, :default => ""
      t.text :project,              :null => false, :default => ""
      t.string :starter,              :null => false, :default => ""
      t.text :content,              :null => false, :default => ""

      t.timestamps null: false
    end
  end
end
