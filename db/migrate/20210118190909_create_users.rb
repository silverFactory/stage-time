class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :stage_name
      t.boolean :host
      t.string :pic
      t.text :bio
      t.string :email
      t.boolean :email_public
      t.string :facebook_link
      t.string :instagram_link
      t.string :youtube_link
      t.string :bandcamp_link
      t.string :spotify_link

      t.timestamps
    end
  end
end
