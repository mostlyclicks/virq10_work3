# This migration comes from refinery_businesses (originally 1)
class CreateBusinessesBusinesses < ActiveRecord::Migration

  def up
    create_table :refinery_businesses do |t|
      t.string :company_name
      t.string :company_url
      t.string :email
      t.string :phone_number
      t.text :address
      t.text :hours
      t.text :description
      t.integer :category_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-businesses"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/businesses/businesses"})
    end

    drop_table :refinery_businesses

  end

end
