class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :country
    	t.timestamps
    end

    company1 = Company.new
    company1.name ="Spritle Software"
    company1.address1 = "Mogapair"
    company1.address2 = "Chennai, Tamilnadu"
    company1.country = "India."
    company1.save

    company2 = Company.new
    company2.name ="Thought Works"
    company2.address1 = "Guindy"
    company2.address2 = "Chennai, Tamilnadu"
    company2.country = "India."
    company2.save

    company3 = Company.new
    company3.name ="Xebia India"
    company3.address1 = "Sector 31"
    company3.address2 = "Gurgaon, Haryana"
    company3.country = "India."
    company3.save

  end
  

  def self.down
    drop_table :companies
  end
end
