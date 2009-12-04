class Company < ActiveRecord::Base
  has_many :users

  def combined_name
    "#{name} - #{address2}"
  end

end
