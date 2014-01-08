module Refinery
  module Businesses
    module Admin
      class BusinessesController < ::Refinery::AdminController

        crudify :'refinery/businesses/business',
                :title_attribute => 'company_name',
                :xhr_paging => true

      end
    end
  end
end
