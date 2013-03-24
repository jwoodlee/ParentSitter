require 'spec_helper'

describe User do
	it { should validate_presence_of :email }
	it { should validate_presence_of :first_name }
	it { should validate_presence_of :last_name }
	it { should validate_presence_of :birth_date }
	it { should validate_presence_of :gender }
	it { should validate_presence_of :zipcode }
	it { should validate_presence_of :cell_phone }

	it "should return the user with given uid and provider" do
		omniauth_auth = OpenStruct.new({provider: "facebook", uid: "54564564yausdyui4564"})
		@user1 = FactoryGirl.create(:user, uid: "54564564yausdyui4564", provider: "facebook")
		@user2 = FactoryGirl.create(:user, uid: "5456878121usdyui4564", provider: "facebook")
		User.find_for_facebook_oauth(omniauth_auth).should == Parent.where(id: @user1.id).first
	end
end