class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
    t.string :name
    t.string :age
    t.string :company_id
    end
  end

  def self.down
    drop_table :users
  end
end
