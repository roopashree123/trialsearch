class AddIndexToVendorsEmail < ActiveRecord::Migration
  def change
  add_index :vendors, :email, unique: true
  end
end
