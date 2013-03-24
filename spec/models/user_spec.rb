require 'spec_helper'

describe User do
	it { should validate_presence_of :email }
	it { should validate_presence_of :first_name }
	it { should validate_presence_of :last_name }
	it { should validate_presence_of :birth_date }
	it { should validate_presence_of :gender }
	it { should validate_presence_of :zipcode }
	it { should validate_presence_of :cell_phone }

	it "should " do
		@user = FactoryGirl.create(:user)
	end
end