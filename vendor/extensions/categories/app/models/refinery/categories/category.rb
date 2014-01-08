module Refinery
  module Categories
    class Category < Refinery::Core::BaseModel
      self.table_name = 'refinery_categories'

      attr_accessible :name, :description, :position

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
