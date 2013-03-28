FactoryGirl.define do
	factory(:parent) do |f|
		f.sequence(:email) { |n| 'bobsmith-parent' + n.to_s + '@acmecorp.com' }
		f.password "example" 
		f.password_confirmation "example"
		f.provider "facebook"
		f.uid "129371371hdsuuayzd9187389"
		f.first_name "Bob"
		f.last_name "Smith"
		f.birth_date "12-12-1985"
		f.gender "male"
		f.zipcode "208112"
		f.cell_phone "78979787892"	
	end

	factory(:sitter) do |f|
		f.sequence(:email) { |n| 'bobsmith-sitter' + n.to_s + '@acmecorp.com' }
		f.password "example" 
		f.password_confirmation "example"
		f.provider "facebook"
		f.uid "129371371hdsuuayzd9187389"
		f.first_name "Bob"
		f.last_name "Smith"
		f.birth_date "12-12-1985"
		f.gender "male"
		f.zipcode "208112"
		f.cell_phone "78979787892"	
	end
end