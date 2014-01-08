module Refinery
  module Businesses
    class Business < Refinery::Core::BaseModel
      self.table_name = 'refinery_businesses'

      attr_accessible :company_name, :company_url, :email, :phone_number, :address, :hours, :description, :category_id, :position

      validates :company_name, :presence => true, :uniqueness => true
    end
  end
end
