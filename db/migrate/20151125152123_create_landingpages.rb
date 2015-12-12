class CreateLandingpages < ActiveRecord::Migration
  def change
    create_table :landingpages do |t|
      t.string :email
      t.timestamps null: false
    end
  end
end
