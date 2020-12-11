class CreateContentfulUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :contentful_users do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :space_id, null: false, index: { unique: true }
      t.string :access_token, null: false, index: { unique: true }
      t.string :environment_id, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
