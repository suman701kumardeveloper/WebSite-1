class CreateSiteVisitors < ActiveRecord::Migration[5.1]
  def change
    create_table :site_visitors do |t|
      t.string :name
      t.string :phonenumber

      t.timestamps
    end
  end
end
