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
		@parent = FactoryGirl.create(:parent, uid: "54564564yausdyui4564", provider: "facebook")
		@sitter = FactoryGirl.create(:sitter, uid: "5457899121usdyui4564", provider: "facebook")
		User.find_for_facebook_oauth(omniauth_auth).should == Parent.where(id: @parent.id).first
	end
end