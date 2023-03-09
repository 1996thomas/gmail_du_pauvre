class CreateEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :emails do |t|
      t.string :body, limit: 400
      t.boolean :viewed
      t.string :email, limit: 100
      t.string :object, limit: 100

      t.timestamps
    end
  end
end
