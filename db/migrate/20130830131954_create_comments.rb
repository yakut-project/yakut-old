class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :teacher
      t.references :user
      t.text :body
      t.timestamps
    end
  end
end
