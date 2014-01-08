# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Businesses" do
    describe "Admin" do
      describe "businesses" do
        refinery_login_with :refinery_user

        describe "businesses list" do
          before do
            FactoryGirl.create(:business, :company_name => "UniqueTitleOne")
            FactoryGirl.create(:business, :company_name => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.businesses_admin_businesses_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.businesses_admin_businesses_path

            click_link "Add New Business"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Company Name", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::Businesses::Business.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Company Name can't be blank")
              Refinery::Businesses::Business.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:business, :company_name => "UniqueTitle") }

            it "should fail" do
              visit refinery.businesses_admin_businesses_path

              click_link "Add New Business"

              fill_in "Company Name", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::Businesses::Business.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:business, :company_name => "A company_name") }

          it "should succeed" do
            visit refinery.businesses_admin_businesses_path

            within ".actions" do
              click_link "Edit this business"
            end

            fill_in "Company Name", :with => "A different company_name"
            click_button "Save"

            page.should have_content("'A different company_name' was successfully updated.")
            page.should have_no_content("A company_name")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:business, :company_name => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.businesses_admin_businesses_path

            click_link "Remove this business forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::Businesses::Business.count.should == 0
          end
        end

      end
    end
  end
end
